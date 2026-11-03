; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><b onload=alert(1)></b>") (= x ">>> vectors()") (= x "<bdi oncut=""alert(1)"" contenteditable>test</bdi>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[^a-zA-Z0-9]).{8,}") ((_ re.from_regex ecma2020 u) "^[\u{30a1}-\u{30f3}|\u{30fc}]+$"))))))
(check-sat)
