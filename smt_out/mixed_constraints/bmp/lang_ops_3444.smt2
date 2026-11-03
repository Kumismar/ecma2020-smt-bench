; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<i id=x tabindex=1 onfocusin=alert(1)></i>") (= x "<u onmouseout=""alert(1)"">test</u>") (= x "<!-- IE 10 in IE5-9 Standards mode -->")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9_\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u1FFF]+([-+.']*[A-Za-z0-9_\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u1FFF]+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$") (re.++ re.all (str.to_re "/i>"))) ((_ re.from_regex ecma2020) "[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$")))))
(check-sat)
