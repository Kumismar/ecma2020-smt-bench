; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<![><img src=""]><img src=x onerror=alert(39)//"">") (= x "<style>:target {color:red;}</style><frame id=x style=""transition:color 1s"" ontransitionend=alert(1)></frame>") (= x "<acronym id=x tabindex=1 onfocusin=alert(1)></acronym>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[^0-9]+$") (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'* /=?^_`{|}~-] @[a-zA-Z0-9-] (?:\.[a-zA-Z0-9-] )*$") (re.++ re.all (str.to_re "ale") re.all)))))
(check-sat)
