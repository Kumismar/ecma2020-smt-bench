; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><object id=x style=""transition:color 1s"" ontransitionend=alert(1)></object>") (= x "<style>@keyframes x{}</style><html style=""animation-name:x"" onanimationend=""alert(1)""></html>") (= x "<a href=""\x14javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (not (str.in_re x (re.comp (re.union (re.union ((_ re.from_regex ecma2020 u) "[0-9]{9,}$") ((_ re.from_regex ecma2020 u) "^Grac1as!$")) ((_ re.from_regex ecma2020 u) "^(?!\s*$)[a-zA-Z0-9\s@@(.,-_)]{1,50}$"))))))
(check-sat)
