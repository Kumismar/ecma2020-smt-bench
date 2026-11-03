; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<pre id=x tabindex=1 onfocus=alert(1)></pre>") (= x "<body onMouseOver body onMouseOver=""javascript:javascript:alert(1)""></body onMouseOver>") (= x "<dt onkeydown=""alert(1)"" contenteditable>test</dt>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]{8,14}$") (re.comp ((_ re.from_regex ecma2020) "^[0-9]{3,5}$"))) (re.++ (str.to_re "<body ") re.all)))))
(check-sat)
