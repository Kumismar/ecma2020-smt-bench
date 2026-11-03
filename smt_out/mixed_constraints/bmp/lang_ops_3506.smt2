; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<basefont onmousemove=""alert(1)"">test</basefont>") (= x "<svg><xss onload=alert(1)></xss>") (= x "<keygen id=x tabindex=1 ondeactivate=alert(1)></keygen><input id=y autofocus>")))
(assert (not (str.in_re x (re.diff (re.inter (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$") (re.++ re.all (str.to_re "s>"))) (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z0-9][A-Za-z0-9\-]{4,19}$"))) (re.comp ((_ re.from_regex ecma2020) "^[1-9]\d{4,10}$"))))))
(check-sat)
