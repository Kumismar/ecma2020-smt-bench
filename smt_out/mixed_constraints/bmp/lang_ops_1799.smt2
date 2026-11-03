; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<menuitem onblur=alert(1) tabindex=1 id=x></menuitem><input autofocus>") (= x "<wbr id=x tabindex=1 onactivate=alert(1)></wbr>") (= x "<li onmouseleave=""alert(1)"">test</li>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "\w+@\w+\.\w+") (re.inter ((_ re.from_regex ecma2020) "^(\+[0-9]{2,}[0-9]{4,}[0-9]*)(x?[0-9]{1,})?$") (re.comp ((_ re.from_regex ecma2020) "[^()/<>[\]\\,'|\x22]+")))))))
(check-sat)
