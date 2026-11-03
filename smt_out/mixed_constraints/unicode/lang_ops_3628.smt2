; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<!-- Up to Opera 12.x -->") (= x "<td oncontextmenu=""alert(1)"">test</td>") (= x "<strike draggable=""true"" ondragend=""alert(1)"">test</strike>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9-+\s()]{7,}$") (re.diff (re.inter ((_ re.from_regex ecma2020 u) "([a-zA-Z]+)$") ((_ re.from_regex ecma2020 u) "^[\d]{10,11}$")) (re.++ re.all (str.to_re "a ") re.all))))))
(check-sat)
