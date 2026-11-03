; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<nobr onfocusout=alert(1) tabindex=1 id=x></nobr><input autofocus>") (= x "<tr onkeyup=""alert(1)"" contenteditable>test</tr>") (= x "&#X03c;")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(\+[0-9]{1,5})?([1-9][0-9]{9})$") (re.inter ((_ re.from_regex ecma2020) ".{8,8}") ((_ re.from_regex ecma2020) ".{2,}[a-zA-Z]")))))
(check-sat)
