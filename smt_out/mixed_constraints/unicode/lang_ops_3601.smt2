; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<xmp onmousedown=""alert(1)"">test</xmp>") (= x "<header draggable=""true"" ondragleave=""alert(1)"">test</header>") (= x "<svg onmouseenter=""alert(1)"">test</svg>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "(?!00)[0-1][0-9]") (re.inter ((_ re.from_regex ecma2020 u) "[0-9\s-]{5,20}") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$")))))
(check-sat)
