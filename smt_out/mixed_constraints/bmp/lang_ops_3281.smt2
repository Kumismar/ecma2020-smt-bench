; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<font onkeypress=""alert(1)"" contenteditable>test</font>") (= x "<th onbeforecopy=""alert(1)"" contenteditable>test</th>") (= x "<ruby onbeforecopy=""alert(1)"" contenteditable>test</ruby>")))
(assert (str.in_re x (re.union (re.++ re.all (str.to_re "y onbe") re.all) (re.inter ((_ re.from_regex ecma2020) "^BE\d{3,7}$") ((_ re.from_regex ecma2020) "^[0-9]{4}-[0-9]{2}-[0-9]{2}$")))))
(check-sat)
