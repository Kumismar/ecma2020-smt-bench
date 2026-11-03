; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<tbody draggable=""true"" ondragend=""alert(1)"">test</tbody>") (= x "<iframe src=javascript:alert(1)>") (= x "<em oncut=""alert(1)"" contenteditable>test</em>")))
(assert (str.in_re x (re.union (re.union ((_ re.from_regex ecma2020) "^[0-9A-Za-z_]+$") (re.++ (str.to_re "<em o") re.all)) (re.diff ((_ re.from_regex ecma2020) "^\d{11}$") (re.comp ((_ re.from_regex ecma2020) "^(?:\d{4})$"))))))
(check-sat)
