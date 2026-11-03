; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<basefont onpaste=""alert(1)"" contenteditable>test</basefont>") (= x "<optgroup id=x tabindex=1 ondeactivate=alert(1)></optgroup><input id=y autofocus>") (= x "<keygen id=x \u{1f600}tabindex=1 onbeforeactivate=alert(1)></keygen>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\+?\d{1,4}\s{0,}(\(\d{1,4}\))?\s{0,}(\d{1,5}\s{0,}-?){1,4}$") (re.comp (re.union ((_ re.from_regex ecma2020) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f4}\u{30fc}]+$") (re.++ re.all (str.to_re "nt>"))))))))
(check-sat)
