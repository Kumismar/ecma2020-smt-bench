; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<thead id=x tabindex=1 ondeactivate=alert(1)></thead><input id=y autofocus>") (= x "<spacer onblur=alert(1) tabindex=1 id=x></spacer><input autofocus>") (= x "<bdo onfocusout=alert(1) tabindex=1 id=x></bdo><input autofocus>")))
(assert (not (str.in_re x (re.comp (re.inter (re.++ re.all (str.to_re "p") re.all) (re.comp (re.inter ((_ re.from_regex ecma2020) "[^@]+@[^@]+") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9][a-zA-Z0-9\- ]{0,10}?[a-zA-Z0-9]$"))))))))
(check-sat)
