; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sub oncopy=""alert(1)"" contenteditable>test</sub>") (= x "<body onfocus body onfocus=""javascript:javascript:alert(1)""></body onfocus>") (= x "<IMG SRC=""jav&#x0D;ascript:alert(<WBR>'XSS');"">")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$") ((_ re.from_regex ecma2020) "[0-9,\+,\-,\s]*")))))
(check-sat)
