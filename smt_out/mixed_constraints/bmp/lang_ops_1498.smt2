; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script>alert(document.head.innerHTML.substr(146,20));</script>") (= x "<output onkeyup=""alert(1)"" contentedita\u{1f600}ble>test</ou\u{1f4a9}tput>") (= x "<dir id=x tabindex=1 onactivate=alert(1)></dir>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\S+\s\S+$") (re.comp (re.inter ((_ re.from_regex ecma2020) "(^[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}0-9\s\.\-]+$)") (re.inter ((_ re.from_regex ecma2020) "^[A-Z].[A-Za-z\-\s']+$") ((_ re.loop 41 55) re.allchar))))))))
(check-sat)
