; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><embed style=""animation-name:x"" onanimationstart=""alert(1)""></embed>") (= x "<picture><source srcset=""validimage.png""><img onloadend=alert(1)></picture>") (= x "<option id=x tabindex=1 onactivate=alert(1)></option>")))
(assert (str.in_re x (re.inter (re.union (re.++ re.all (str.to_re "re>") re.all) ((_ re.from_regex ecma2020 u) "^.{0,60}$")) (re.inter ((_ re.from_regex ecma2020 u) "^([A-Za-z0-9_\-\.]+)@([A-Za-z0-9_\-\.]+)\.([A-Za-z]{2,12})$") ((_ re.from_regex ecma2020 u) "^([0]?[1-9]|[1|2][0-9]|[3][0|1])[./-]([0]?[1-9]|[1][0-2])[./-]([0-9]{4}|[0-9]{2})$")))))
(check-sat)
