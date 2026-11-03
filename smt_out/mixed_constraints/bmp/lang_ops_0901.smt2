; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<form onmouseenter=""alert(\u{20000}1)"">test</form>") (= x "<font onbeforecut=""alert(1)"" contenteditable>test</font>") (= x "<shadow onmouseout=""alert(1)"">test</shadow>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(05)[0-9][0-9][1-9]([0-9]){6}$") (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)+[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$") (re.++ re.all (str.to_re "/fo") re.all))))))
(check-sat)
