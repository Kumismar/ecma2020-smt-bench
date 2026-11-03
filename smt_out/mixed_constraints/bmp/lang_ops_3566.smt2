; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sup id=x tabindex=1 onbeforedeactivate=alert(1)></sup><input autofocus>") (= x "<b id=x tabindex=1 ondeactivate=alert(1)></b><input id=y autofocus>") (= x "<abbr id=x tabindex=1 onbeforedeactivate=alert(1)></abbr><input autofocus>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) ".{0,700}") (re.inter ((_ re.from_regex ecma2020) "^[-a-zA-Z0-9 .]+$") (re.++ re.all (str.to_re "ocus>"))))))))
(check-sat)
