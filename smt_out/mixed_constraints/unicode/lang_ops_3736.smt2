; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<hgroup onmouseover=""alert(1)"">test</hgroup>") (= x "<svg oncut=""alert(1)"" contenteditable>test</svg>") (= x "<wbr onmouseover=""alert(1)"">test</wbr>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-z0-9]{8}") (re.inter (re.inter (re.++ re.all (str.to_re "</hg") re.all) ((_ re.from_regex ecma2020 u) "^[0-9]{4}[A-Z]{1}$")) ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$")))))
(check-sat)
