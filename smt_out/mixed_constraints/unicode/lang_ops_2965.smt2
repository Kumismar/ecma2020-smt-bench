; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html onMouseDown html onMouseDown=""javascript:javascript:alert(1)""></html onMouseDown>") (= x "<aside onkeypress=""alert(1)"" contenteditable>test</aside>") (= x "<source onmousemove=""alert(1)"">test</source>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "[^A-Za-z]+") (re.comp ((_ re.from_regex ecma2020 u) "^([a-z0-9_\.+-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$"))) ((_ re.from_regex ecma2020 u) "^(?:0|(?:\+|00) ?[0-9]{1,2} ?)(?:(?:[1-9] ?(?:[0-9] ?){8})|(?:6 ?-? ?[1-9] ?(?:[0-9] ?){7})|(?:[1,2,3,4,5,7,8,9]\d ?-? ?[1-9] ?(?:[0-9] ?){6,8})|(?:[1,2,3,4,5,7,8,9]\d{2} ?-? ?[1-9] ?(?:[0-9] ?){5}))$")))))
(check-sat)
