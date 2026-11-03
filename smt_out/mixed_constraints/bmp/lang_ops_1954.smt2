; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x ononline=""alert(Strin\u{20000}g.fromCharCode(88\u{1d400},83,83))"">") (= x "\u{1f4a9}\u{5c}u003c") (= x "<img onmouseover=""alert(1)"">test</img>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "([0-9]{6})?") (re.union (re.inter ((_ re.from_regex ecma2020) "[A-Za-z].{3,}") ((_ re.from_regex ecma2020) "^(([^<>()\[\]\\.,;:\s@""]+(\.[^<>()\[\]\\.,;:\s@""]+)*)|("".+""))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$")) (re.++ re.all (str.to_re "g>"))))))
(check-sat)
