; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<time onkeypress=""alert(1)"" contenteditable>test</time>") (= x "<nobr oncopy=""alert(1)"" contenteditable>test</nobr>") (= x "<figure oncopy=""alert(1)"" contenteditable>test</figure>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z-\s]+$"))))
(check-sat)
