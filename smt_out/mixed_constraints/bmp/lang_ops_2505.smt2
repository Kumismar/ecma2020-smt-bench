; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<progress id=x tabindex=1 onfocusin=alert(1)></progress>") (= x "<link onclick=""alert(1)"">test</link>") (= x "&lt;A HREF=&quot;http://0102.0146.0007.00000223/&quot;&gt;XSS&lt;/A&gt;")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^(?=.*\d)[0-9a-zA-Z]{6,}$") (re.++ (str.to_re "&lt;A ") re.all)) ((_ re.from_regex ecma2020) "^[0-9]{0,11}$"))))
(check-sat)
