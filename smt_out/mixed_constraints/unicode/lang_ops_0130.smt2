; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&#x000003C;") (= x "<script/src=&#100&#97&#116&#97:text/&#x6a&#x61&#x76&#x61&#x73&#x63&#x72&#x69&#x000070&#x074,&#x0061;&#x06c;&#x0065;&#x00000072;&#x00074;(1)></script>") (= x "<rb onmouseover=""alert(1)"">test</rb>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._!%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "50$")))))
(check-sat)
