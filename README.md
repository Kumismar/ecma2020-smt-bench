# ECMAScript Regular Expressions SMT Benchmarks
This repository contains SMT-LIB2 benchmark formulas with ECMAScript regular expressions (regexes).
The formulas are for z3-noodler and other string solvers.
There are two sets of formulas:
- **Membership formulas**: each formula has one membership of a string constant in an ECMAScript regex, `(re.from_ecma2020 "…")`.
- **Mixed-constraint formulas**: ECMAScript regexes, `((_ re.from_regex ecma2020) "…")`, in random mixes of string constraints and in language operations.

## Terms
- **Pattern**: the source text of an ECMAScript regex, for example `^\d{3}$`.
- **Payload**: an XSS string from `xss-payloads.txt`. The generators make the string constants from the payloads.
- **Status**: the expected result, `sat` or `unsat`, in the line `(set-info :status …)` of each formula.
- **Full match**: a string is in the language of an ECMAScript regex if the regex matches the whole string. This is the default semantics of `re.from_ecma2020` in z3-noodler, and the semantics of OSTRICH. The statuses of the membership formulas assume it.
- **Engine semantics**: a string is in the language of an ECMAScript regex if `RegExp.test()` finds a match at some position of the string. The statuses of the mixed-constraint formulas assume it. In z3-noodler, set the option `smt.str.ecma_engine_semantics=true`.

The formulas contain no solver options, so that every solver can read them.
`run.py` sets the options of each set on the command line.

## Folders
| folder | content |
|---|---|
| `smt_out/memberships/` | The membership formulas. |
| `smt_out/mixed_constraints/bmp/` | The mixed-constraint formulas in the BMP mode. |
| `smt_out/mixed_constraints/unicode/` | The mixed-constraint formulas in the Unicode mode. |
| `smt_out_tmp/` | The output of the generators. |
| `generators/` | The generators of the formulas and the code that they share. |
| `results/`, `test_output/` | The output of `run.py`. |

VeriFIT's smt-bench uses the formulas in `smt_out/`.
The sets in `smt_out/` change only when the team decides to regenerate them.
Then the generators write the new sets into `smt_out_tmp/`, and the team moves them into `smt_out/`.
Git ignores `smt_out_tmp/` and the output of `run.py`.

## String encoding
All the formulas follow the SMT-LIB standard for string literals:
- A literal contains only printable ASCII characters (U+0020 to U+007E).
- A quote `"` is written as `""`.
- Each other character up to U+2FFFF is an escape `\u{…}` with the hexadecimal code point. For example, `é` is `\u{e9}`.
- A backslash before `u` is written as `\u{5c}`. Otherwise, the SMT-LIB parser reads the ECMAScript escape `é` in a pattern as an SMT-LIB escape.

The generators skip patterns and payloads with code points above U+2FFFF.

## The membership formulas
Each formula has this format:
```
(set-logic QF_S)
(set-info :status <sat|unsat>)
(declare-const x String)
(assert (str.in_re x (re.from_ecma2020 "<pattern>")))
(assert (= x "<payload>"))
(check-sat)
```

`generators/make_smt_memberships.py` makes one formula for each pattern in `patterns-used-in-testbed.txt`:
1. A linear congruential generator selects a payload. The seed is `--seed` (default 42).
2. node checks if the regex matches the whole payload: it runs `RegExp.test()` with `^(?:<pattern>)$`. The result is the status of the formula.
3. If the test takes more time than `--oracle-timeout` (default 10 s), the generator selects a different payload.
4. If no payload gives a result, the generator skips the pattern.

The membership formulas use `re.from_ecma2020` and the full match, so that the results of z3-noodler and OSTRICH can be compared.
OSTRICH supports only the full match.

`make_smt_memberships.py` replaces `make_smt_random.js`, which made the first version of the formulas.
The statuses of the first version were for the engine semantics.
With these statuses, 2508 of the current formulas would be `sat` instead of `unsat`.
In the first version, 1024 formulas also contained raw UTF-8 characters.

The formulas `regex_0000` to `regex_2095` have the same patterns and payloads as in the first version.
From `regex_2096`, the payloads are different.
`make_smt_random.js` stopped each test after 1 s, and its test of the first payload of that pattern took longer, so it selected a different payload.
The full match of that payload takes less than 1 s.

## The mixed-constraint formulas
`generators/make_smt_mixed.py` makes these formulas.
A solver must support `re.from_regex` with the index `ecma2020` to solve them.
Their statuses assume the engine semantics, so z3-noodler needs the option `smt.str.ecma_engine_semantics=true`.

### Modes
The two modes differ only in the flags of the regexes.

| mode | regex | a regex reads a string as |
|---|---|---|
| BMP (default) | `((_ re.from_regex ecma2020) "…")` | UTF-16 code units, as in JS without flags |
| Unicode (`--unicode`) | `((_ re.from_regex ecma2020 u) "…")` | code points |

In both modes, a string is a sequence of SMT-LIB characters, which are code points.
The generator adds one or two supplementary code points (above U+FFFF) to approximately 10 % of the payloads.
The two modes read these code points differently.
For example, `^.{3}$` matches `"a😀b"` only in the Unicode mode.

### Families
The prefix of each file name is the family of the formula.

| family | share | the question of the formula | how the generator knows the answer |
|---|---|---|---|
| `random_mix` | 40 % | Do some values of `x`, `y` and `z` satisfy 8 to 15 random string constraints? | It tests all the possible values. |
| `lang_ops` | 10 % | Is a string `x` in a regex that language operations build from ECMAScript regexes? | It tests all the possible values of `x`. |
| `lang_inclusion` | 25 % | Is the language of a regex `A` included in the language of a regex `B`? | It builds `A` and `B` so that the answer is yes, or it finds a string that shows that the answer is no. |
| `lang_equality` | 25 % | Do two regexes `A` and `B` have the same language? | the same as for `lang_inclusion` |

### How the generator makes the formulas
These rules apply to all the families:
- The string constants come from the payloads.
- A string is in an ECMAScript regex if `RegExp.test()` in node finds a match in it.
- 85 % of the selected patterns have non-regular features (anchors, word boundaries, lookarounds, backreferences), because these features make the formulas more difficult.
- For each family, the generator prefers the status that is less frequent in the family. Thus the numbers of sat and unsat formulas are approximately equal.

**`random_mix`**
1. `x` is one of 2 or 3 payloads, `z` is one of 2 or 3 payload suffixes, and `y = x ++ z`.
2. The generator adds 8 to 15 random constraints on `x`, `y` and `z`: memberships in ECMAScript regexes, `str.prefixof`, `str.suffixof`, `str.contains`, lengths, `str.at`, `str.indexof`, `str.substr` and `str.replace`. It cuts the constants of most constraints from a possible value of the variable, so that the constraint is true for that value.
3. It negates some constraints and joins the constraints into clauses (disjunctions) of 1 to 3 constraints.
4. It tests all the combinations of the values of `x` and `z`. The formula is sat if one of them satisfies all the clauses.

**`lang_ops`**
1. `x` is one of 3 payloads.
2. The generator joins 2 or 3 ECMAScript regexes with `re.union`, `re.inter`, `re.diff` and `re.comp`. Sometimes it also adds a classical SMT-LIB regex of a prefix, a suffix, a substring or a length.
3. The formula asserts that `x` is in this regex, or that `x` is not in it. It is sat if one of the values of `x` satisfies the assertion.

**`lang_inclusion` and `lang_equality`**
1. The generator selects a pattern `P`. Then it builds a second regex from `P` in one of these ways:
   - It changes `P` so that the new language is equal to the language of `P`, is included in it, or includes it. For example, `(?:P)+` and `(?:P).*` have the same language as `P`. The language of `^(?:P)$` is included in the language of `P`, and the language of `(?:P)|C` includes it. `C` matches a part of a payload literally.
   - It selects a second pattern `Q` and combines `P` and `Q` with language operations. For example, `(re.comp (re.union P Q))` and `(re.inter (re.comp P) (re.comp Q))` have the same language.
2. For about two thirds of the formulas, the inclusion or the equality is true because of the way the generator built the regexes. Then the generator also tests it on 20 payloads.
3. For the other formulas, a payload shows that the inclusion or the equality is false.
4. The formula asks the question in one of these encodings:

| family | encodings |
|---|---|
| `lang_inclusion` | a string `x` in `(re.diff A B)`, a string `x` in `A` and not in `B`, `(= (re.inter A B) A)`, `(= (re.union A B) B)`, `(not (= (re.union A B) B))` |
| `lang_equality` | `(= A B)`, `(not (= A B))`, a string `x` in the symmetric difference of `A` and `B`, `(not (= (str.in_re x A) (str.in_re x B)))` |

The second comment line of each `lang_inclusion` and `lang_equality` formula gives its construction and its encoding.

## Requirements
- Python 3.10 or later.
- node (tested with v24.18.0).

## How to generate the sets
```
./generators/make_smt_memberships.py --out smt_out_tmp/memberships
./generators/make_smt_mixed.py --out smt_out_tmp/mixed_constraints/bmp --z3 <z3-noodler binary>
./generators/make_smt_mixed.py --out smt_out_tmp/mixed_constraints/unicode --unicode
```
Each generator deletes the `.smt2` files in `--out` before it writes the formulas.
If `--out` is `smt_out/` or a folder in it, the generator asks for a confirmation first.

`make_smt_mixed.py` has these options:
- `--count N`: the number of formulas (default 4000).
- `--seed S`: the seed of the random generator (default 42). The same seed gives different formulas in the two modes.
- `--oracle-timeout SECONDS`: the time limit of one `RegExp.test()` in node (default 10 s). The generator does not use a pattern after a test of it reaches the time limit.
- `--z3 BINARY`: the generator skips each pattern for which this solver gives neither sat nor unsat for a membership of a free string. For example, the solver gives `unknown` for an unsupported feature. A timeout of the solver (`--z3-timeout`, default 5 s) does not skip the pattern, because difficult patterns are useful in the benchmark.

The tests in node have a time limit, so the sets depend on the speed of the machine.
Make the final sets on a machine with no other load.

## How to run the benchmarks
```
./run_memory_ceiling.sh <suffix> [<suffix> ...] [--z3 BINARY] [--jobs N] [--timeout SECONDS] [--tests DIR [DIR ...]]
```
This command runs `./z3-<suffix>` (or `--z3 BINARY`) on each `.smt2` file in the `--tests` folders (default `smt_out/`) and in their subfolders.
By default, it runs 4 solver processes in parallel, with a time limit of 10 s for each formula.
With more than one suffix, the runs of all the solvers go into one pool in a random order.
Thus all the solvers run under the same load.
The script gives its arguments to `run.py`.

`run.py` gives the solver the options of the set of each formula: no option for a formula in a `memberships/` folder, and `smt.str.ecma_engine_semantics=true` for a formula in a `mixed_constraints/` folder.
It stops with an error for a formula outside these folders.

z3-noodler does not support the `u` flag of ECMAScript regexes yet, so it cannot solve the Unicode set.
To run z3-noodler without this set, select the membership and BMP folders:
```
./run_memory_ceiling.sh <suffix> --tests smt_out/memberships smt_out/mixed_constraints/bmp
```

All the solver processes run in one systemd scope with a memory ceiling: 6 GB high, 8 GB maximum and no swap.
When the OOM killer stops a process at the ceiling, `run.py` reports a crash.
You can also run `run.py` directly, without the memory ceiling.

`run.py` gives each formula one of these outcomes:

| outcome | meaning |
|---|---|
| `passed` | The solver gives the expected status. |
| `wrong` | The solver gives the other status. |
| `timeout` | The solver gives no answer in the time limit. |
| `unknown` | The solver answers `unknown`, or it stops with no answer. |
| `error` | The solver prints `(error …)`, for example for a regex that it cannot parse. An answer or a timeout after an error does not count. |
| `crash` | A signal stops the solver, or a debug build fails an assertion. |

`run.py` writes these files:
- `results/<suffix>.csv`: one row for each formula, with the file, the family, the expected status, the result, the time and the message of the solver.
- `results/<suffix>-failed.csv`: the rows of the formulas that the solver did not pass.
- `test_output/<suffix>/failed/`: a copy of each formula with a wrong result, with the solver output at the end.
- `test_output/<suffix>/unknown/`: the same for the outcomes `unknown`, `error` and `crash`.

The name of a formula is its path relative to the folder that contains all the `--tests` folders.
The family of a formula starts with its folder, for example `mixed_constraints/bmp/random_mix`.
At the end, `run.py` prints the outcomes for each family.

```
./compare.py results/<suffix1>.csv results/<suffix2>.csv
```
This command compares two runs.
It prints:
- the outcomes of the two runs for each family,
- the formulas with a different outcome,
- the times of the formulas that both runs solved.

It also writes `results/<suffix1>-vs-<suffix2>.csv` with each formula that one of the runs did not pass.

## Files
| file | content |
|---|---|
| `generators/make_smt_memberships.py` | The generator of the membership formulas. |
| `generators/make_smt_mixed.py` | The generator of the mixed-constraint formulas. |
| `generators/oracle.py`, `generators/js_oracle.js` | The oracle: one node process that runs `RegExp.test()` for the generators. |
| `generators/smtlib.py` | The SMT-LIB encoding of strings and constraints, for the generators. |
| `run.py`, `run_memory_ceiling.sh` | The benchmark runner. |
| `compare.py` | The comparison of two runs. |

## The source of patterns and XSS payloads
Both `xss-payloads.txt` and `patterns-used-in-testbed.txt` come from the Black Ostrich string solver data.
You can find them [here](https://www.cse.chalmers.se/research/group/security/black-ostrich/).
