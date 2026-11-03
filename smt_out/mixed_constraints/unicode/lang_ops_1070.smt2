; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<del onbeforecut=""alert(1)"" contenteditable>test</del>") (= x "<a href=""\x06javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<multicol onmouseenter=""alert(1)"">test</multicol>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0-9]+[a-zA-Z]?") (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{1,5}") (re.comp ((_ re.from_regex ecma2020 u) "^[\x00-\x7f]+@[\x00-\x7f]+$")))))))
(check-sat)
