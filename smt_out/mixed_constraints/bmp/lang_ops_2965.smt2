; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html oncontextmenu=""alert(1)"">test</html>") (= x "<thead draggable=""true"" ondragstart=""alert(1)"">test</thead>") (= x "<acronym draggable=""true"" ondragstart=""alert(1)"">test</acronym>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[A-Z]{8,11}$") ((_ re.from_regex ecma2020) "^[0-9]{8}$|^[0-9]{10}$"))))
(check-sat)
