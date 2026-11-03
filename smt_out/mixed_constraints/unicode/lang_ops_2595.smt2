; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<noscript id=x tabindex=1 onactivate=alert(1)></noscript>") (= x "<bdi id=x tabindex=1 onfocus=alert(1)></bdi>") (= x "<em id=x tabindex=1 onactivate=alert(1)></em>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$") (re.comp ((_ re.from_regex ecma2020 u) "^\s*?!?\(?\+?0{0,2}4?\)?[-. ]?0[-. ]?[37]\d{2}\)?[-. ]?\d{3}[-. ]?\d{3}\s*?$")))))
(check-sat)
