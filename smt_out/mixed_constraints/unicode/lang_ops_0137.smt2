; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ul onmouseover=""al\u{1d400}ert(1)"">test<\u{20000}/ul>") (= x "<optgroup id=x tabindex=1 ondeactivate=alert(1)></optgroup><input id=y autofocus>") (= x "<rp draggable=""true"" ondrag=""alert(1)"">test</rp>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[0123456789\-]+$") (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$"))))))
(check-sat)
