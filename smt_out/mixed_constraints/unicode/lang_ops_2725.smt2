; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<table onpaste=""alert(1)"" contenteditable>test</table>") (= x "<body onunhandledrejection=alert(1)><script>fetch('//xyz')</script>") (= x "&lt;A HREF=\""htt p&#58;//6 6&#46;000146&#46;0x7&#46;147/\""&gt;XSS&lt;/A&gt;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z\s]{2,30})$") (re.union ((_ re.from_regex ecma2020 u) "^1{0,1}(\(\d{3}\)\d{3}-\d{4}|\d{10})") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{5c}u0590-\u{5c}u05FF\s]+$")))))
(check-sat)
