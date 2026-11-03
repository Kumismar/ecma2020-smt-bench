; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<html onmousemove=""alert(1)"">test</html>") (= x "<a onmouseover=""alert(document.cookie)"">xxs link</a>") (= x "<svg><ruby onload=alert(1)></ruby>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[^\s].+[^\s]$") (re.comp ((_ re.from_regex ecma2020) "^[0-9]2-?[0-9]3$")))))
(check-sat)
