; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style onfocusout=alert(1) tabindex=1 id=x></style><input autofocus>") (= x "<q onmousemove=""alert(1)"">test</q>") (= x "<blink onbeforepaste=""alert(1)"" contenteditable>test</blink>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[\u{5c}u4E00-\u{5c}u9FA5]+$") (re.comp (re.inter (re.++ re.all (str.to_re "><in") re.all) ((_ re.from_regex ecma2020) "^(\d?){11}$"))))))
(check-sat)
