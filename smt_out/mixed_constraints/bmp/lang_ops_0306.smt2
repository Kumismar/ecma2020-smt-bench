; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<met\u{1f4a9}a charset=""mac-farsi"">\u{bc}script\u{be}javascript:alert(1)\u{bc}/script\u{be}") (= x "<content onkeydown=""alert(1)"" contenteditable>test</content>") (= x "<picture id=x tabindex=1 onbeforeactivate=alert(1)></picture>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$") ((_ re.from_regex ecma2020) "^(0941)([0-9]{7})"))))
(check-sat)
