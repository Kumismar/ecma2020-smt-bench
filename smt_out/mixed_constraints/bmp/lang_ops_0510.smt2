; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdi id=x tabindex=1 onbeforeactivate=alert(1)></bdi>") (= x "<command id=x tabindex=1 ondeactivate=alert(1)></command><input id=y autofocus>") (= x "<html onpaste=""alert(1)"" contenteditable>test</html>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "(0?[1-9]|[12]\d|30|31)\.(0?[1-9]|1[0-2])\.(\d{4}|\d{2})") ((_ re.from_regex ecma2020) "^([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+)([ -]+([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+))+$")))))
(check-sat)
