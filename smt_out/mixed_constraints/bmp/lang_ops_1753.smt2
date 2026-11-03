; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<acronym draggable=""true"" ondragstart=""alert(1)"">test</acronym>") (= x "'-alert(1)//") (= x "</XSS STYLE=xss:expression(alert('XSS'))>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^AX\d{3,7}|AI\d{3,7}|PA\d{3,7}$") ((_ re.from_regex ecma2020) "^(?=.*\d).{6,}$")))))
(check-sat)
