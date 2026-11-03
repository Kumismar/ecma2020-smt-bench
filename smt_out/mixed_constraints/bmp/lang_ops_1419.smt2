; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;SCRIPT SRC=http&#58;//ha&#46;ckers&#46;org/xss&#46;js?&lt;B&gt;") (= x "&lt;IFRAME SRC=http://ha.ckers.org/scriptlet.html &lt;") (= x "<caption onmouseover=""alert(1)"">test</caption>")))
(assert (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re ";")) (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9._+-]*@[a-zA-Z0-9._+-]+\.[a-z]{2,4}$"))) (re.inter ((_ re.from_regex ecma2020) "^973([0-9]{8})|[0-9]{8}$") (re.comp ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{44f}a-zA-z,\s]+$"))))))
(check-sat)
