; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ScRipT 5-0*3+9\u{10348}/3=>prompt(1)</ScRipT giveanswerhere=?") (= x "<rt id=x tabindex=1 \u{20000}onfocusi\u{10348}n=alert(1)></rt>") (= x "\u{1f600}<blockquote onclick=""alert(1)"">t\u{1d400}est</blockquote>")))
(assert (str.in_re x (re.comp (re.diff (re.inter ((_ re.from_regex ecma2020) "^([a-zA-Z\u{5c}u00C0-\u{5c}u024F\s'.,-]{3,40})$") ((_ re.from_regex ecma2020) "^BE\d{3,7}|be\d{3,7}$")) (re.++ re.all (str.to_re "T ") re.all)))))
(check-sat)
