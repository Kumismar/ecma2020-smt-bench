; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<br><br><br><br><br><br><br><br>\u{20000}<br><br>") (= x "</style>//[""'`-->]]>]</div>") (= x """><img src=x onerror=javascript:alert((`1`))>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[\u{430}-\u{44f}\u{410}-\u{42f}0-9- ]{2,100}") ((_ re.from_regex ecma2020 u) "^[A-Z\u{5d0}-\u{5ea}a-z ]{1,50}$")))))
(check-sat)
