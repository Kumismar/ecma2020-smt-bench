; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<plaintext onmouseover=""alert(1)"">test</plaintext>") (= x "<textarea onselect=alert(1) autofocus>XSS</textarea>") (= x "<iframe onbeforecopy=""alert(1)"" contenteditable>test</iframe>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)") (re.comp ((_ re.from_regex ecma2020 u) "^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]{0,1}\d{3}[\s.-]{0,1}\d{4}[\sextEXT]{0,5}\d{0,6}$"))) (re.comp (re.++ re.all (str.to_re "text>"))))))
(check-sat)
