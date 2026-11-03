; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<SCRIPT SRC=//ha.ckers.org/.j>") (= x "<keygen onblur=alert(1) tabindex=1 id=x></keygen><input autofocus>") (= x "<abbr draggable=""true"" ondrag=""alert(1)"">test</abbr>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^1[3,5,8]d{9}$") ((_ re.from_regex ecma2020) "^[6|7][0-9]{8}$")) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9 ]{2,50}$")))))
(check-sat)
