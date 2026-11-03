; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ruby onkeypress=""alert(1)"" contenteditable>test</ruby>") (= x "<a href=""\x03javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<base oncopy=""alert(1)"" contenteditable>test</base>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "[0-9]{5}(-[0-9]{4})?") ((_ re.loop 45 55) re.allchar)) ((_ re.from_regex ecma2020) "^0?1[3|4|5|6|7|8][0-9]\d{8}"))))
(check-sat)
