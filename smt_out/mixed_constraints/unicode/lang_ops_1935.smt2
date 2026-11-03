; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<menu oncontextmenu=""alert(1)"">test</menu>") (= x "<dl onbeforecut=""alert(1)"" contenteditable>test</dl>") (= x "perl -e &#039;print \"";<;SCR\0IPT>;alert(\"";XSS\"";)<;/SCR\0IPT>;\"";;&#039; >; out")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-z A-Z]*$") ((_ re.from_regex ecma2020 u) "^(?!0{5})(\d{5})(?!-?0{4})(|-\d{4})?$"))))
(check-sat)
