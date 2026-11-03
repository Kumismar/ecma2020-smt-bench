; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html onmouseout=""alert(1)"">test</html>") (= x "<center oncut=""alert(1)"" contenteditable>test</center>") (= x "&#0060")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) ".+\.[A-Za-z]{2,63}$") ((_ re.from_regex ecma2020 u) "^1[3,5,8]d{9}$"))))
(check-sat)
