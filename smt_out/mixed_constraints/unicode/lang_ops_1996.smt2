; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><summary id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></summary>") (= x "<a href=""\x00javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<script onbeforecut=""alert(1)"" contenteditable>test</script>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[\u{30a1}-\u{30f3}|\u{3000}| |\u{30fc}]+$") ((_ re.from_regex ecma2020 u) "^(07[\d]{9}|447[\d]{9})$"))))
(check-sat)
