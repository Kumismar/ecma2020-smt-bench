; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "alert&#40;1&#41") (= x "<label onmouseup=""alert(1)"">test</label>") (= x "<svg><meta onload=alert(1)></meta>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^(SI)?[0-9\.\-]{8,10}$") ((_ re.from_regex ecma2020 u) "^[02-9][0-9]{9}$")) ((_ re.loop 40 41) re.allchar)))))
(check-sat)
