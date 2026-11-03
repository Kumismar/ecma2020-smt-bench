; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<BR SIZE=""&{javascript:alert(1)}"">") (= x "<mark draggable=""true"" ondrag=""alert(1)"">test</mark>") (= x "<label onmouseout=""alert(1)"">test</label>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9]+\.?[0-9]*$") ((_ re.from_regex ecma2020) "[0-9-?]+$")))))
(check-sat)
