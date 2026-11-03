; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<script src=""//brutelogic.com.br&so\u{1d400}l;1.js&num;") (= x "<noscript oncopy=""alert(1)"" contenteditable>test</noscript>") (= x "<style>:target {color:red;}</style><content id=x style=""transition:color 1s"" ontransitionend=alert(1)></content>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^[1-9][0-9]{1,5}") ((_ re.from_regex ecma2020) "\w{2,}\s{1}\w{2,}(.*)")) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$"))))
(check-sat)
