; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "Redirect 302 /a.jpg http://victimsite.com/admin.asp&;deleteuser") (= x "ABC<div style=""x:\xE2\x80\x85expression(javascript:alert(1)"">DEF") (= x "<input type=radio id=x onfocus=alert(1)>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._\-]+@[0-9a-zA-Z\-]+\.[a-zA-Z.]{2,}$") ((_ re.from_regex ecma2020 u) "^[- 0-9A-Za-z|\u{2122} ]+$"))))
(check-sat)
