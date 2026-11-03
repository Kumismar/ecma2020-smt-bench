; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""javas\x09cript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<center onmouseover=""alert(1)"">test</center>") (= x "<body onload=""document.vulnerable=true;"">")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9]{2,64}") (re.union (re.++ re.all (str.to_re "vascr") re.all) ((_ re.from_regex ecma2020 u) "^[tT][pP][a-zA-Z0-9.,$;]+$"))) ((_ re.from_regex ecma2020 u) "^CS\d{3,7}|AI\d{3,7}$")))))
(check-sat)
