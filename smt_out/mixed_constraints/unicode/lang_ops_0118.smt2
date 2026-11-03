; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<source id=x tabindex=1 onfocusin=alert(1)></source>") (= x "<svg><ol onload=alert(1)></ol>") (= x "<svg><abbr onload=alert(1)></abbr>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(([A-Za-z0-9](([_.-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([_.-]?[a-zA-Z0-9]+)*).([A-Za-z]{2,}))|(^0[1-7][0-9]{8}$))") (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{7,8}") (re.comp ((_ re.from_regex ecma2020 u) "^((0?[1-9])|(1[0-2]))$"))))))
(check-sat)
