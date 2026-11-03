; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<body src=1 href=1 onerror=""javascript:alert(1)""></body>") (= x "<article id=x tabindex=1 onfocusin=alert(1)></article>") (= x "<SCRIPT onreadystatechange=javascript:javascript:alert(1);></SCRIPT>")))
(assert (not (str.in_re x (re.diff (re.union (re.++ re.all (str.to_re "PT>")) ((_ re.from_regex ecma2020 u) "[a-z0-9.-]+\.[a-z]{2,}$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{2019}'-]+$")))))
(check-sat)
