; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a onmouseover=""alert(1)"">test</a>") (= x "<input oncut=alert(1) value=""XSS"" autofocus>") (= x "<svg><command onload=alert(1)></command>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^((([0-9]{5})(?:-(?=[0-9]))?([0-9]{4})?)|([ABCEGHJKLMNPRSTVXYabceghjklmnprstvxy][0-9][A-Za-z] ?[0-9][A-Za-z][0-9]))$") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$")) ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,9}$")))))
(check-sat)
