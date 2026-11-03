; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""javas\x0Dcript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<u onbeforecut=""alert(1)"" contenteditable>test</u>") (= x "<noframes onkeyup=""alert(1)"" contenteditable>test</noframes>")))
(assert (str.in_re x (re.comp (re.union ((_ re.loop 61 76) re.allchar) (re.union ((_ re.from_regex ecma2020 u) "^(\d+|\d+[.]\d+)%?$") ((_ re.from_regex ecma2020 u) "^[0-9]{2}-?[0-9]{3}$"))))))
(check-sat)
