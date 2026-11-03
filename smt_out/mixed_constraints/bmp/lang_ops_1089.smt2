; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<aside onmousemove=""alert(1)"">test</aside>") (= x "<acronym draggable=""true"" ondragstart=""alert(1)"">test</acronym>") (= x "<strike oncontextmenu=""alert(1)"">test</strike>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[0-9A-Za-z_]{1,8}$") ((_ re.from_regex ecma2020) "^([A-Za-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3})$")) (re.++ (str.to_re "<") re.all))))
(check-sat)
