; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<iframe xmlns=""#"" src=""javascript:alert(1)""></iframe>") (= x "<image draggable=""true"" ondragleave=""alert(1)"">test</image>") (= x "<style>:target {transform: rotate(180deg);}</style><figure id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></figure>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^\d{4}-\d{2}-\d{2}$") (re.inter ((_ re.from_regex ecma2020) "^0\d{1,3}-\d{7,8}(#\d+)?") (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z .,'-]*$") (re.comp ((_ re.loop 45 61) re.allchar))))))))
(check-sat)
