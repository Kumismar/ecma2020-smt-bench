; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<param onpaste=""alert(1)"" contenteditable>test</param>") (= x "<svg><thead onload=alert(1)></thead>") (= x "<svg><progress onload=alert(1)></progress>")))
(assert (str.in_re x (re.union (re.diff (re.++ re.all (str.to_re "ad onl") re.all) ((_ re.from_regex ecma2020 u) "^[5]+$")) ((_ re.from_regex ecma2020 u) "^0\d{1,3}-?\d{2,4}-?\d{4}"))))
(check-sat)
