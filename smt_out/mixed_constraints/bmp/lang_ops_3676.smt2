; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><del id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></del>") (= x "<meter onbeforepaste=""alert(1)"" contenteditable>test</meter>") (= x "<keygen id=x onfocus=alert(1)>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^\d{3}-\d{2}-\d{4}$") (re.comp ((_ re.from_regex ecma2020) "^[0-9() -]+$")))))
(check-sat)
