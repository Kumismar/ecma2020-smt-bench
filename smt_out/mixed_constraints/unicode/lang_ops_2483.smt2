; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><animatetransform onrepeat=alert(1) attributeName=transform repeatCount=2 dur=1s>") (= x "<content draggable=""true"" ondrag=""alert(1)"">test</content>") (= x "<param onclick=""alert(1)"">test</param>")))
(assert (not (str.in_re x (re.union (re.++ (str.to_re "<svg><") re.all) (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,12}$") ((_ re.from_regex ecma2020 u) "\d{9}$"))))))
(check-sat)
