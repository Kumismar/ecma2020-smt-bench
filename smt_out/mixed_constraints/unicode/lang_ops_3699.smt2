; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<code \u{1d400}onmouseleave=""alert(1)"">test</code>") (= x "<colgroup ondblclick=""alert(1)"">\u{1f4a9}test</colgroup>") (= x "<tbody draggable=""true"" ondragstart=""alert(1)"">test</tbody>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[9876][0-9]{9}") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=(.*[\W]){1,})(?!.*\s).{8,}"))))))
(check-sat)
