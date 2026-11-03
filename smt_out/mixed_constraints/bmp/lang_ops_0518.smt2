; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<s onmouseenter=""alert(1)"">test</s>") (= x "<isindex onmousedown=""alert(1)"">test</isindex>") (= x "<SCRIPT SRC=http://ha.ckers.org/xss.js></SCRIPT>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "([A-Z\u{d1}a-z\u{f1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{3,12})+([ ]{1})+([A-Za-zz\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{3,12})") (re.diff ((_ re.loop 34 35) re.allchar) ((_ re.from_regex ecma2020) "(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z]).{8,}")))))
(check-sat)
