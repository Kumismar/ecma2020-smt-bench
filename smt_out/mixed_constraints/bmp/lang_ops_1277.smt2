; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&#0060") (= x "<element onblur=alert(1) tabindex=1 id=x></element><input autofocus>") (= x "<wbr id=x tabindex=1 onbeforedeactivate=alert(1)></wbr><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^AX\d{3,7}$") (re.union ((_ re.from_regex ecma2020) "^.+@\S+\.\S+$") ((_ re.from_regex ecma2020) "(?:0[1-9]|[12]\d|3[01])"))))))
(check-sat)
