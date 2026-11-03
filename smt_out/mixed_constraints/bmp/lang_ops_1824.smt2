; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<x '=""foo""><x foo='><img src=x onerror=javascript:alert(1)//'>") (= x "<optgroup draggable=""true"" ondragleave=""alert(1)"">test</optgroup>") (= x "<shadow onmouseout=""alert(1)"">test</shadow>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[a-z0-9-]*$") ((_ re.from_regex ecma2020) "[A-Za-z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}\u{df}\s0-9\.]*"))))
(check-sat)
