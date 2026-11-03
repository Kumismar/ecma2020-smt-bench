; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ruby onmouseup=""alert(1)"">test</ruby>") (= x "<h1 ondblclick=""alert(1)"">test</h1>") (= x "<time onmousemove=""alert(1)"">test</time>")))
(assert (str.in_re x (re.inter (re.inter (re.diff ((_ re.from_regex ecma2020) "[^!@#\$%\^&\*\(\)?<>;""]+") (re.++ re.all (str.to_re "onmou") re.all)) ((_ re.from_regex ecma2020) "^([A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+[,.]?[ ]?|[A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+['-]?)+")) ((_ re.from_regex ecma2020) "[a-zA-Z\s][^0-9]+$"))))
(check-sat)
