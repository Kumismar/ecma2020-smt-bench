; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@import ""data:,*%7bx:expression(javascript:alert(1))%7D"";</style>") (= x "<nextid onbeforepaste=""alert(1)"" contenteditable>test</nextid>") (= x "<i onmouseleave=""alert(1)"">test</i>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=.*[A-Z|a-z])(?=.*[0-9]).{7,20}") ((_ re.from_regex ecma2020) "^[ ]*[^""""<>]{0,50}[ ]*$"))))
(check-sat)
