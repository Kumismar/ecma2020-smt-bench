; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<font onbeforecopy=""alert(1)"" contenteditable>test</font>") (= x "<style>@keyframes x{}</style><acronym style=""animation-name:x"" onanimationstart=""alert(1)""></acronym>") (= x "<a href=""\x00javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9]{4}-(0[1-9]|1[0-2])-(0[1-9]|[1-2][0-9]|3[0-1])$") ((_ re.from_regex ecma2020) "^-?\d+(?:\.\d*)?(?:[Ee][+\-]?\d+)?$")))))
(check-sat)
