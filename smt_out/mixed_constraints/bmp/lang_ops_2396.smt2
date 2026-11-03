; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<strong onkeyup=""alert(1)"" contenteditable>test</strong>") (= x "<rb onmouseout=""alert(1)"">test</rb>") (= x "</script><script>alert('XSS');</script>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[0-9]{4,15}$") ((_ re.from_regex ecma2020) "^[0-9 +][0-9 ()-]+")))))
(check-sat)
