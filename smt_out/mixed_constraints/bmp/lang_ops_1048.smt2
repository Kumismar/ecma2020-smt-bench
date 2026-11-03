; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<nav onbeforecopy=""alert(1)"" contenteditable>test</nav>") (= x "</form>//[""'`-->]]>]</div>") (= x "<code draggable=""true"" ondrag=""alert(1)"">test</code>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[0-9\-\+]{9,15}$") (re.union ((_ re.from_regex ecma2020) "^[a-z0-9_-]{3,15}$") (re.comp (re.inter (re.++ re.all (str.to_re "py=""") re.all) ((_ re.from_regex ecma2020) "^[1-9][0-9]*")))))))
(check-sat)
