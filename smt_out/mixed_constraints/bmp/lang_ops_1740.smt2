; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&#X00003C;") (= x """`'><script>\x21javascript:alert(1)</script>") (= x "<legend onbeforecopy=""alert(1)"" contenteditable>test</legend>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[+]?[(]{0,1}[0-9]{1,3}[)]{0,1}[-\s\./0-9]*$") ((_ re.from_regex ecma2020) "^[A-Za-z]{3,25}$"))))
(check-sat)
