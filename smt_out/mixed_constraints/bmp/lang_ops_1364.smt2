; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<b onblur=alert(1) tabindex=1 id=x></b><input autofocus>") (= x "<datalist oncut=""alert(1)"" contenteditable>test</datalist>") (= x "<embed onmouseover=""alert(1)"">test</embed>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[0-9a-zA-Z_ -]{1,20}") (re.comp ((_ re.from_regex ecma2020) "^([0-9 -]){6,6}$"))))))
(check-sat)
