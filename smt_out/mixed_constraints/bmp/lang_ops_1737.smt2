; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<body style=""background:gray"">") (= x "<svg><output onload=alert(1)></output>") (= x "<IMG SRC=x onpageshow=""alert(String.fromCharCode(88,83,83))"">")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^\D?(\d{3})\D?\D?(\d{3})\D?(\d{4})$") ((_ re.from_regex ecma2020) "^(8)$")))))
(check-sat)
