; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<header onmouseleave=""alert(1)"">test</header>") (= x "<rp id=x tabindex=1 onfocusin=alert(1)></rp>") (= x "<dd id=x tabindex=1 onfocusin=alert(1)></dd>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "[a-z0-9!#$%&'*+/=?^_`{|}~.-]+@[a-z0-9-]+(\.[a-z0-9-]+)*") (re.diff ((_ re.from_regex ecma2020 u) "[a-z\s]+$") (re.comp ((_ re.from_regex ecma2020 u) "^\(([0-9\s]){3}\)\s??([0-9\s]){9}$"))))))
(check-sat)
