; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<frame onkeypress=""alert(1)"" contenteditable>test</frame>") (= x "</XSS STYLE=xss:expression(alert('XSS'))>") (= x "<///style///><span %2F onmousemove='alert&lpar;1&rpar;'>SPAN")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "((?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{5,12})") ((_ re.from_regex ecma2020 u) "^\d{4}/\d{1,2}/\d{1,2}$")))))
(check-sat)
