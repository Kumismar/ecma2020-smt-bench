; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<output onkeypress=""alert(1)"" contenteditable>test</output>") (= x "<h1 id=x tabindex=1 ondeactivate=alert(1)></h1><input id=y autofocus>") (= x "<figure onmouseup=""alert(1)"">test</figure>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[A-Za-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$") ((_ re.from_regex ecma2020) "^(?!.{21,})[^.]+$")))))
(check-sat)
