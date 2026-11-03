; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b id=x tabindex=1 ondeactivate=alert(1)></b><input id=y autofocus>") (= x "<svg oncopy=""alert(1)"" contenteditable>test</svg>") (= x "<track draggable=""true"" ondrag=""alert(1)"">test</track>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Z]+[a-zA-Z]*$") ((_ re.from_regex ecma2020 u) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$"))))))
(check-sat)
