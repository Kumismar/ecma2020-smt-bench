; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<frameset onbeforecut=""alert(1)"" contenteditable>test</frameset>") (= x "<input autofocus onfocusin=a\u{10348}lert(1)>") (= x "<i onbeforecut=""alert(1)"" contenteditable>test</i>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^([a-z0-9_\.\+-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$") (re.comp ((_ re.from_regex ecma2020) "[-\d\(\)]{5,}"))) (re.++ (str.to_re "<i o") re.all))))
(check-sat)
