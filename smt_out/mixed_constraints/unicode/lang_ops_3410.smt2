; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onloadedmetadata=""alert(String.fromCharCode(88,83,83))"">") (= x "<image draggable=""true"" ondragleave=""alert(1)"">test</image>") (= x "<br draggable=""true"" ondrag=""alert(1)"">test</br>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{6,15}") ((_ re.from_regex ecma2020 u) "^([0-2][0-9]|(3)[0-1])(\/)(((0)[0-9])|((1)[0-2]))(\/)\d{4}$"))))
(check-sat)
