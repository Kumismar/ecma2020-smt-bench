; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><hgroup style=""animation-name:x"" onanimationstart=""alert(1)""></hgroup>") (= x "<fieldset draggable=""true"" ondragleave=""alert(1)"">test</fieldset>") (= x "<ruby ondblclick=""alert(1)"">test</ruby>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "t</fi") re.all) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2}[a-zA-Z]*$") (re.comp (re.union ((_ re.from_regex ecma2020) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]{2,16}") ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$")))))))
(check-sat)
