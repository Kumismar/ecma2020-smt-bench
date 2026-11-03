; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""\u{1f600}\x0Djavascript:javascript:alert(1)"" id=""fuzzelement1"">\u{10348}test</a>") (= x "<param onblur=alert(1) tabindex=1 id=x></param><input autofocus>") (= x "<img \x12src=x onerror=""javascript:alert(1)"">")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\d{10,}") (re.comp (re.union ((_ re.from_regex ecma2020) "^[\d]{3}[-]{1}[\d]{2}[-]{1}[\d]{4}") ((_ re.loop 63 69) re.allchar)))))))
(check-sat)
