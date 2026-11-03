; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<li onmouseleave=""alert(1)"">test</li>") (= x "<body oncontextmenu=""alert(1)"">test</body>") (= x "<rt onmousemove=""alert(1)"">test</rt>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d{3}-\d{4}-\d{3}$") ((_ re.from_regex ecma2020 u) "^1[3|4|5|8][0-9]\d{4,8}$")))))
(check-sat)
