; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<basefont onbeforepaste=""alert(1)"" contenteditable>test</basefont>") (= x "<style>@keyframes x{}</style><shadow style=""animation-name:x"" onanimationend=""alert(1)""></shadow>") (= x "<br draggable=""true"" ondragstart=""alert(1)"">test</br>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[-\w][-\w.]+@{1}[-a-z0-9]+[.]{1}[a-z]{2,7}$") ((_ re.from_regex ecma2020 u) "^[\w-]+(\.[\w-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$")))))
(check-sat)
