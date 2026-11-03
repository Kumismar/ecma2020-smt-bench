; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div onmousedown=""alert(1)"">test</div>") (= x "<body onLoad=""alert('XSS');""") (= x "top[8680439..toString(30)](1)")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}") ((_ re.from_regex ecma2020) "[0-9 -]{13,19}"))))
(check-sat)
