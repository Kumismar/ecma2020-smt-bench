; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<strike onmousemove=""alert(1)"">test</strike>") (= x "<script>javascript:alert(1)</script\x0A") (= x "&lt;A HREF=&quot;http://66.102.7.147/&quot;&gt;XSS&lt;/A&gt;")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.loop 59 66) re.allchar) (re.comp (re.union ((_ re.from_regex ecma2020) "[0-9\s,]+") ((_ re.from_regex ecma2020) "[a-zA-Z-_ ]{2,40}$")))) ((_ re.from_regex ecma2020) "^(\d{10}|\d{10})$")))))
(check-sat)
