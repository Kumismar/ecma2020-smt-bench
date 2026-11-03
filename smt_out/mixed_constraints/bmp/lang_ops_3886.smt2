; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<td onmouseover=""alert(1)"">test</td>") (= x "<sub oncontextmenu=""alert(1)"">test</sub>") (= x "<script src=%(jscript)s></script>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z\u{c5}\u{c4}\u{d6}\u{e5}\u{e4}\u{f6} \-]{2,25}$") (re.++ re.all (str.to_re "useo") re.all)) ((_ re.from_regex ecma2020) "([0-9]{5})$")))))
(check-sat)
