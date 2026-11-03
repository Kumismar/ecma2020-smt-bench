; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pre dragga\u{10348}ble=""true"" o\u{20000}ndrag=""alert(1)"">test</pre>") (= x "<div id=""134""><xmp>") (= x "<dfn onmouseover=""\u{1f600}alert(1)"">test</dfn>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "[A-Za-z0-9]{0,15}") ((_ re.from_regex ecma2020) "^([_A-z0-9 ]){5,}$")) ((_ re.from_regex ecma2020) "^\+?[0-9]{5,15}$"))))
(check-sat)
