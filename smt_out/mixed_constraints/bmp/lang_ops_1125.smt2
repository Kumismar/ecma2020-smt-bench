; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<shadow onkeydown=""alert(1)"" contenteditable>test</shadow>") (= x "<div id=""91"">[A]") (= x "<iframe id=x onfocusin=alert(1)>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "\(?([2-9][0-8][0-9])\)?[\-\. ]?([2-9][0-9]{2})[\-\. ]?([0-9]{4})(\s*x[0-9]+)?") (re.union ((_ re.from_regex ecma2020) "^([\u{410}-\u{42f}\u{430}-\u{44f}\s-]{2,15})$") ((_ re.from_regex ecma2020) "^(9)$"))))))
(check-sat)
