; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg onbeforecut=""alert(1)"" contenteditable>test</svg>") (= x "<html onbeforepaste=""alert(1)"" contenteditable>test</html>") (= x "<script src=//brutelogic.com.br/1.js>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.loop 46 60) re.allchar) ((_ re.from_regex ecma2020 u) "^(11)$")) (re.comp ((_ re.from_regex ecma2020 u) ".*qeqrez.*")))))
(check-sat)
