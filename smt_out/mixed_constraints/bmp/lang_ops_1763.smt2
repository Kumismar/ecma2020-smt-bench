; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<canvas onblur=alert(1) tabindex=1 id=x></canvas><input autofocus>") (= x "<plaintext id=x tabindex=1 onbeforeactivate=alert(1)></plaintext>") (= x "<pre id=x tabindex=1 onfocus=alert(1)></pre>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{3,}") (re.union ((_ re.from_regex ecma2020) "^[^@]+([@]{1})[0-9a-zA-Z\._-]+([\.]{1})[0-9a-zA-Z\._-]+$") (re.comp (re.++ re.all (str.to_re "focus>")))))))
(check-sat)
