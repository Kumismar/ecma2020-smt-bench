; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style onreadystatechange=javascript:javascript:alert(1);></style>") (= x "<img draggable=""true"" ondragenter=""alert(1)"">test</img>") (= x "<address onkeypress=""alert(1)"" contenteditable>test</address>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^\+?[0-9\-]+\*?$") (re.comp ((_ re.from_regex ecma2020) "[\u{30a1}-\u{30f3}|\u{3000}| |\u{30fc}]+$")))))
(check-sat)
