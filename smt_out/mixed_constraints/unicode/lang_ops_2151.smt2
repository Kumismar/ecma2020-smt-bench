; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><figure id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></figure>") (= x "<rtc draggable=""true"" ondrag=""alert(1)"">test</rtc>") (= x "<th onmousemove=""alert(1)"">test</th>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}.,\s]+){0,30}$") ((_ re.from_regex ecma2020 u) "^(\(11\) [9][0-9]{4}-[0-9]{4})|(\(1[2-9]\) [5-9][0-9]{3}-[0-9]{4})|(\([2-9][1-9]\) [5-9][0-9]{3}-[0-9]{4})$")))))
(check-sat)
