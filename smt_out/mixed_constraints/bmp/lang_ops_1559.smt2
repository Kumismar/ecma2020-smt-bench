; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<i draggable=""true"" ondragleave=""alert(1)"">test</i>") (= x "<font draggable=""true"" ondragstart=""alert(1)"">test</font>") (= x "<element draggable=""true"" ondragend=""alert(1)"">test</element>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^12345$") ((_ re.from_regex ecma2020) "^.+@\S+\.\S+$"))))
(check-sat)
