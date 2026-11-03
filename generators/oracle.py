"""Evaluate ECMAScript regexes on strings with RegExp.test() in node, for the generators of the benchmarks."""

import json
import os
import queue
import subprocess
import threading
from typing import IO

HERE = os.path.dirname(os.path.abspath(__file__))
ORACLE = os.path.join(HERE, "js_oracle.js")
# Seconds that node gets for a request on top of the timeouts of its tests, after them it is restarted.
ANSWER_MARGIN = 10.0


def read_lines(stream: IO[str], lines: queue.Queue) -> None:
    """Puts the lines of a stream into a queue, and None at its end.

    Args:
        stream (IO[str]): The stream, the output of node.
        lines (queue.Queue): The queue.
    """
    for line in stream:
        lines.put(line)
    lines.put(None)


class Oracle:
    """Evaluates regex memberships with RegExp.test() in one long-running node process (js_oracle.js).

    Every test has its own timeout, so a pattern that backtracks for too long has no result for that string.
    The strings of the same request that follow it are not tested and have no result either, since a generator does not use a pattern after a timeout.
    The results are cached, so node evaluates every membership at most once.
    """

    def __init__(self, flags: str, timeout: float, full_match: bool = False) -> None:
        """Creates an oracle with no evaluated memberships, node starts with the first request.

        Args:
            flags (str): Flags of the regexes, "u" in the Unicode mode and "" in the BMP mode.
            timeout (float): Timeout of a single test in seconds.
            full_match (bool): Whether a regex must match the whole string; otherwise RegExp.test() searches for a matching substring.
        """
        self.flags = flags
        self.timeout = timeout
        self.full_match = full_match
        # Results of the evaluated memberships, {(pattern, string): result}.
        # The result is None if the test timed out or the pattern is not a valid RegExp.
        self.cache: dict[tuple[str, str], bool | None] = {}
        self.process: subprocess.Popen | None = None
        # The lines that node writes, read by a thread so that waiting for an answer can time out.
        self.lines: queue.Queue = queue.Queue()

    def start(self) -> None:
        """Starts node and the thread that reads its output."""
        self.process = subprocess.Popen(
            ["node", ORACLE, self.flags, str(round(self.timeout * 1000)), "full" if self.full_match else "search"],
            stdin=subprocess.PIPE,
            stdout=subprocess.PIPE,
            text=True,
            encoding="ascii",
        )
        # Every process gets its own queue, so that the end of a killed process does not reach the next one.
        self.lines = queue.Queue()
        threading.Thread(target=read_lines, args=(self.process.stdout, self.lines), daemon=True).start()

    def stop(self) -> None:
        """Stops node, the next request starts it again."""
        if self.process is not None:
            self.process.kill()
            self.process.wait()
            self.process = None

    def request(self, pattern: str, strings: list[str]) -> list[bool | None]:
        """Tests a pattern on strings in node.

        If node does not answer in time or dies, it is stopped and none of the tests has a result.

        Args:
            pattern (str): The regex pattern.
            strings (list[str]): The strings.

        Returns:
            list[bool | None]: The result of every string, None if its test timed out or the pattern is not a valid RegExp.
        """
        if self.process is None:
            self.start()
        # Every non-ASCII character is escaped in JSON, so a supplementary code point becomes a surrogate pair in node.
        try:
            self.process.stdin.write(json.dumps({"pattern": pattern, "strings": strings}) + "\n")
            self.process.stdin.flush()
            line = self.lines.get(timeout=len(strings) * self.timeout + ANSWER_MARGIN)
        except (BrokenPipeError, queue.Empty):
            line = None
        if line is None:
            self.stop()
            return [None] * len(strings)

        # node answers null if the pattern is not a valid RegExp.
        answers = json.loads(line)
        return [None] * len(strings) if answers is None else answers

    def evaluate(self, needs: dict[str, list[str]]) -> dict[tuple[str, str], bool | None]:
        """Evaluates memberships, only those missing in the cache are sent to node.

        Args:
            needs (dict[str, list[str]]): The memberships to evaluate, {pattern: strings}.

        Returns:
            dict[tuple[str, str], bool | None]: The results of the memberships, {(pattern, string): result}, None if the test timed out or the pattern is not a valid RegExp.
        """
        for pattern, strings in needs.items():
            missing = list(dict.fromkeys(s for s in strings if (pattern, s) not in self.cache))
            if missing:
                for s, result in zip(missing, self.request(pattern, missing)):
                    self.cache[pattern, s] = result
        return {(pattern, s): self.cache[pattern, s] for pattern, strings in needs.items() for s in strings}
