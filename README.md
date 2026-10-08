# ECMAScript Regular Expressions SMT Benchmarks
This repository contains a set of SMT-LIB2 benchmark formulae that utilize `re.from_ecma2020` predicate.
## The benchmarks
In `smt_out/` folder, the SMT-LIB formulae are stored, classified as satisfiable or unsatisfiable based on the `:status` tag.
The benchmarks are created by 'randomly' assigning an XSS payload from `xss-payloads.txt` to each regex in `patterns-used-in-testbed.txt` and creating a following formula:

```
(set-logic QF_S)
(set-info :status <sat|unsat>)
(declare-const x String)
(assert (str.in_re x (re.from_ecma2020 "<regex>")))
(assert (= x "<xss_payload>"))
(check-sat)
```

Each pair (regex, payload) is then matched by JavaScript regex engine and classified as `sat`/`unsat` based on the result.

## How to run
The benchmarks can be run with the `run.sh` script from the repository root, where the `smt_out/` folder is located.
The script expects a Z3 binary named `z3-<suffix>` in the current directory, and the suffix is given as the first argument (e.g., `./run.sh release` runs `./z3-release`).
Each formula is solved with a 10-second timeout, and the solver result is compared with the expected `:status` value.
At the end, the script prints the number of passed, failed, timed-out and unknown results.
Formulae with a wrong result are saved to `test_output/failed/`, and formulae for which the solver returned neither `sat` nor `unsat` are saved to `test_output/unknown/`; each file contains the original formula followed by the solver output.
Note that the `test_output/` folder is deleted at the start of every run.

## The benchmark generator
In this repository, there is `make_smt_random.js` script that takes care of the benchmark generation.
As mentioned earlier, it takes regex patterns one by one, assigns a 'random' XSS payload and verifies the satisfiability of the given combination.
Patterns that cause long backtracking are handled by running each match in a separate worker thread with a 1 second timeout &ndash; if all payloads time out for a given pattern, it is skipped.
It may serve as a bug finder in case the solvers do not follow matching semantics of the JS regex engine (which follows the ECMAScript standard).
Also, thanks to the script, one can generate fresh set of benchmarks for the SMT solvers.

The payload assignment is driven by linear congruence generator &ndash; you can regenerate identical testbeds by having the same seed (NOTE: it is recommended to do that on the same piece of hardware, since the pattern matching times may vary).

## The source of patterns and XSS payloads
Both `xss-payloads.txt` and `patterns-used-in-testbed.txt` come from the Black Ostrich string solver data &ndash; you can find them [here](https://www.cse.chalmers.se/research/group/security/black-ostrich/).
