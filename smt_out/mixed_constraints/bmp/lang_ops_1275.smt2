; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><command id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></command>") (= x "<wbr onkeyup=""alert(1)"" contenteditable>test</wbr>") (= x "<foreignObject xlink:href=""javascript:alert(88)""/>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^\d{3}[-]?\d{3}[-]?\d{3}$") ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5]{1,5}$"))))))
(check-sat)
