; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<source onbeforecopy=""alert(1)"" contenteditable>test</source>") (= x "<style onclick=""alert(1)"">test</style>") (= x "<isindex onbeforepaste=""alert(1)"" contenteditable>test</isindex>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "(?=.*[A-Za-z]).{1,}") ((_ re.from_regex ecma2020) "^Nom$"))))))
(check-sat)
