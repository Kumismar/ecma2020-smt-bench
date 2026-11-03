; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x """autofocus/onfocus=alert(1)//") (= x "<dir onkeydown=""alert(1)"" contenteditable>test</dir>") (= x "<source onkeydown=""alert(1)"" contenteditable>test</source>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9_\.\-]+@[a-zA-Z0-9\-]+\.[a-zA-Z0-9\-\.]+") ((_ re.from_regex ecma2020) "first_name")))))
(check-sat)
