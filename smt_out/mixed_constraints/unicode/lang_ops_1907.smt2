; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<canvas onkeypress=""alert(1)"" contenteditable>test</canvas>") (= x "<svg><thead onload=alert(1)></thead>") (= x "<noscript onpaste=""alert(1)"" contenteditable>test</noscript>")))
(assert (not (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020 u) "^(3)$") (re.comp (re.++ re.all (str.to_re ">")))) ((_ re.from_regex ecma2020 u) "\+(9[976]\d|8[987530]\d|6[987]\d|5[90]\d|42\d|3[875]\d|2[98654321]\d|9[8543210]|8[6421]|6[6543210]|5[87654321]|4[987654310]|3[9643210]|2[70]|7|1|)\d{1,4}-\d{1,18}$")))))
(check-sat)
