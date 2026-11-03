; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<nav onmouseenter=""alert(1)"">test</nav>") (= x "&#X3c;") (= x "ABC<div style=""x:\x00expression(javascript:\u{20000}alert(1)"">DEF")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9_+&*-]+(?:\.[a-zA-Z0-9_+&*-]+)*@(?:[a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(?=.*\d).{6,}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z][A-Za-z0-9]*$")))))))
(check-sat)
