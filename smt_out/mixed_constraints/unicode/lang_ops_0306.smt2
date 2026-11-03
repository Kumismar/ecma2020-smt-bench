; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<br id=x tabindex=1 onfocus=alert(1)></br>") (= x "<div id=x tabindex=1 onbeforeactivate=alert(1)></div>") (= x "<bdo ondblclick=""alert(1)"">test</bdo>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[1-9]\d{5}(18|19|20)\d{2}((0[1-9])|(1[0-2]))(([0-2][1-9])|10|20|30|31)\d{3}[0-9Xx]$") (re.++ re.all (str.to_re "div>"))) ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,15}$"))))
(check-sat)
