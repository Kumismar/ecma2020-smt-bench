; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<video onblur=alert(1) tabindex=1 id=x\u{20000}\u{1f4a9}></video><input autofocus>") (= x "ABC<div style=""x:\xE2\x80\x83expression(javascript:alert(1)"">DEF") (= x "<header id=x tabindex=1 onfocus=alert(1)></header>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\u{e7}\u{e7}\u{c7}\u{c7}\u{e3}\u{e3}\u{c3}\u{c3}\u{e9}\u{e9}\u{c9}\u{c9}\u{ed}\u{ed}\u{cd}\u{cd}\u{f3}\u{f3}\u{d3}\u{d3}\u{fa}\u{fa}\u{da}\u{da}\u{e1}\u{e1}\u{c1}\u{c1}\u{e2}\u{e2}\u{c2}\u{c2}\u{ea}\u{ea}\u{ca}\u{ca}\u{f4}\u{f4}\u{d4}\u{d4} ]+$") ((_ re.from_regex ecma2020) "^[\u{410}-\u{44f}\u{456}' ]{1,}$"))))
(check-sat)
