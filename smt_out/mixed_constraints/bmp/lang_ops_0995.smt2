; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rt oncopy=""alert(1)"" contenteditable>test</rt>") (= x "<rp ondblclick=""alert(1)"">test</rp>") (= x "<conten\u{20000}t id=x tabindex=1 onfocusin=alert(1\u{1f600})></content>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[_A-z ]{1,}$") (re.comp ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}]+$")))))
(check-sat)
