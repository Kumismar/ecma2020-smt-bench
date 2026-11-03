; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg onLoad svg onLoad=""javascript:javascript:alert(1)""></svg onLoad>") (= x "<style>:target {transform: rotate(180deg);}</style><plaintext id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></plaintext>") (= x "<svg draggable=""true"" ondragstart=""alert(1)"">test</svg>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^.{0,1}$") (re.inter ((_ re.from_regex ecma2020) "^(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}$") ((_ re.from_regex ecma2020) "2[0-9]{3}")))))
(check-sat)
