; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<XSS STYLE=""behavior: url(%(htc)s);"">") (= x "<header draggable=""true"" ondragenter=""alert(1)"">test</header>") (= x "<meter oncontextmenu=""alert(1)"">test</meter>")))
(assert (str.in_re x (re.inter (re.++ (str.to_re "<XSS ") re.all) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z ]{1,20}$") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z]{2}[0-9]{22}$"))))))
(check-sat)
