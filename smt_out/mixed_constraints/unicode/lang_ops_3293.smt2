; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><style style=""animation-name:x"" onanimationstart=""alert(1)""></style>") (= x "<noframes onmouseover=""alert(1)"">test</noframes>") (= x "<pre oncopy=""alert(1)"" contenteditable>test</pre>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^.{8,}") (re.++ re.all (str.to_re "e>"))) ((_ re.from_regex ecma2020 u) "^\d{1,2}$"))))
(check-sat)
