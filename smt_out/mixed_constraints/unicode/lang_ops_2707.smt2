; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<center id=x tabindex=1 onfocus=alert(1)></center>") (= x "<style>:target {transform: rotate(180deg);}</style><tfoot id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></tfoot>") (= x "<rb id=x tabindex=1 onfocusin=alert(1)></rb>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^(0|\+)\d{2,}[0-9-/\s]*$") ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093}\u{3094}\u{30fc}\u{3000} ]*$")) (re.comp (re.++ re.all (str.to_re "enter>")))))))
(check-sat)
