; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<time onmouseover=""alert(1)"">test</time>") (= x "<html onmouseleave=""alert(1)"">test</html>") (= x "<nextid id=x tabindex=1 onactivate=alert(1)></nextid>")))
(assert (not (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020) "50$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]+$")))))
(check-sat)
