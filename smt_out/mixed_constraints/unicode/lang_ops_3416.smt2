; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<element id=x tabindex=1 onbeforedeactivate=alert(1)></element><input autofocus>") (= x "<embed src=1 onerror=alert(1) type=image/gif>") (= x "<fieldset id=x tabindex=1 onfocusin=alert(1)></fieldset>")))
(assert (str.in_re x (re.comp (re.inter (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^([0-9]{5}|\s*)$") ((_ re.from_regex ecma2020 u) "[a-zA-z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z- ]{1,49}$"))) (re.++ re.all (str.to_re "er") re.all)))))
(check-sat)
