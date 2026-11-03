; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<header oncopy=""alert(1)"" contenteditable>test</header>") (= x "<abbr id=x tabindex=1 onbeforedeactivate=alert(1)></abbr><input autofocus>") (= x "<footer onmousedown=""alert(1)"">test</footer>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Z a-z 0-9]{5,20}$") ((_ re.from_regex ecma2020 u) "^[6-9]\d*|0$"))))
(check-sat)
