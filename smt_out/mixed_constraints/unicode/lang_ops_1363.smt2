; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ol onmouseenter=""alert(1)"">test</ol>") (= x "<element onmousemove=""alert(1)"">test</element>") (= x "<noembed ondblclick=""alert(1)"">test</noembed>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^.{0,40}$") (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]*[.,]?[0-9]*$"))))))
(check-sat)
