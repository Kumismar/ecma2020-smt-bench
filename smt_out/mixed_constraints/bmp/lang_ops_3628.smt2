; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ul onmouseover=""al\u{1d400}ert(1)"">test<\u{20000}/ul>") (= x "<wbr onblur=alert(1) tabindex=1 id=x></wbr><input autofocus>") (= x "<x contenteditable onkeyup=alert(1)>press any key!")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^[0-9]{1,2}[-][0-9]{1,2}[-][0-9]{4}$") ((_ re.from_regex ecma2020) "(^\d{5}(-\d{4})?$)|(^[abceghjklmnprstvxyABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Za-z]{1} *\d{1}[A-Za-z]{1}\d{1}$)")) ((_ re.from_regex ecma2020) "^([A-z0-9 ]){2,}$")))))
(check-sat)
