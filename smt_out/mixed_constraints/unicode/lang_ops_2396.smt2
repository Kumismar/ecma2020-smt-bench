; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<form oncut=""alert(1)"" contenteditable>test</form>") (= x "<input onmousedown=""alert(1)"">test</input>") (= x "<content onmousemove=""alert(1)"">test</content>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}") (re.++ re.all (str.to_re "=""a") re.all)) (re.comp ((_ re.from_regex ecma2020 u) "^((\+)?(\d{2}[-]))?(\d{10}){1}?$")))))
(check-sat)
