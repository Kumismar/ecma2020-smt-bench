; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<xmp ondblclick=""alert(1)"">test</xmp>") (= x "<img onclick=""alert(1)"">test</img>") (= x "<\u{1f4a9}html ontouchmove=alert(1)>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "[a-z0-9._%+-a-z]+@[a-z0-9.-]+\.[a-z]{2,9}$") ((_ re.from_regex ecma2020) "^[0-9\+\-\(\)\s]+.$")) ((_ re.from_regex ecma2020) "[A-Z0-9]{6}"))))
(check-sat)
