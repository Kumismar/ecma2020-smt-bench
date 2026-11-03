; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<link onkeypress=""alert(1)"" contenteditable>test</link>") (= x "<tt onbeforepaste=""alert(1)"" contenteditable>test</tt>") (= x "<x OnXxx=1")))
(assert (str.in_re x (re.diff (re.inter ((_ re.loop 51 55) re.allchar) ((_ re.from_regex ecma2020 u) "^EnterLessons!?$")) ((_ re.from_regex ecma2020 u) "^(?!0\.00)[1-9]\d{0,7}(,\d{3})*(\.\d{0,4})?$"))))
(check-sat)
