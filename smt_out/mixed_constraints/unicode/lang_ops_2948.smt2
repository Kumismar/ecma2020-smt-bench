; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg onResize svg onResize=""javascript:javascript:alert(1)""></svg onResize>") (= x "<ol onbeforepaste=""alert(1)"" contenteditable>test</ol>") (= x "<nobr onmouseenter=""alert(1)"">test</nobr>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^([1-8]{1}\d{2}){1}$") ((_ re.from_regex ecma2020 u) "^\S{4,20}$")))))
(check-sat)
