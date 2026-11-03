; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<nobr onmousedown=""alert(1)"">test</nobr>") (= x "&lt;IMG LOWSRC=\""javascript&#058;alert('XSS')\""&gt;") (= x "<img onmouseenter=""alert(1)"">test</img>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[\u{30a1}-\u{30f3}|\u{3000}| ]+$") ((_ re.from_regex ecma2020) "^\s*[a-zA-Z\u{e1}-\u{17e}\u{c1}-\u{17d}]+\s*$"))))))
(check-sat)
