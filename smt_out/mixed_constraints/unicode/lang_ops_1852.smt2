; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<isindex onmouseup=""alert(1)"">test</isindex>") (= x "<element onmouseleave=""alert(1)"">test</element>") (= x "<em draggable=""true"" ondragleave=""alert(1)"">test</em>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.(?:[a-zA-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|fr|jobs|museum)$") ((_ re.from_regex ecma2020 u) "^\d{2,4}-\d{3,4}-\d{3,4}$")) ((_ re.from_regex ecma2020 u) "^[A-Z0-9\- ]+"))))
(check-sat)
