// Evaluates ECMAScript regexes on strings with RegExp.test() for oracle.py.
//
// The arguments are the flags of the regexes (none in the BMP mode, "u" in the Unicode mode), the timeout of one test in milliseconds and the semantics.
// The semantics "search" tests whether the regex matches a substring of the string, as RegExp.test() does; "full" tests whether it matches the whole string.
// Reads one JSON request {"pattern": ..., "strings": [...]} per line from stdin and writes one JSON line per request: the list of the RegExp.test() results for its strings, with null for a test that timed out, or null if the pattern is not a valid RegExp.
// After a test times out, the generators do not use the pattern, so its remaining strings are not tested and get null.
const readline = require("readline");
const vm = require("vm");

const flags = process.argv[2] || "";
const timeout = Number(process.argv[3]);
const fullMatch = process.argv[4] === "full";
// Every test runs as a script in this context, so that node stops it after the timeout.
const context = vm.createContext({});
const test = new vm.Script("regex.test(string)");

readline.createInterface({ input: process.stdin, crlfDelay: Infinity }).on("line", (line) => {
    const { pattern, strings } = JSON.parse(line);
    try {
        context.regex = new RegExp(pattern, flags);
        // A full match is a search with the regex anchored at both ends, which match only at the ends of the string without the m flag.
        // The pattern alone is checked first, since the anchors can make an invalid pattern valid, e.g. "a)(b".
        if (fullMatch) {
            context.regex = new RegExp(`^(?:${pattern})$`, flags);
        }
    } catch {
        process.stdout.write("null\n");
        return;
    }
    let timedOut = false;
    const results = strings.map((string) => {
        if (timedOut) {
            return null;
        }
        context.string = string;
        try {
            return test.runInContext(context, { timeout });
        } catch {
            timedOut = true;
            return null;
        }
    });
    process.stdout.write(JSON.stringify(results) + "\n");
});
