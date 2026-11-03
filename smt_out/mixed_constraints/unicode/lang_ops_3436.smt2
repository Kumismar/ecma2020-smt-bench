; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html onkeypress=""alert(1)"" contenteditable>test</html>") (= x "<del onmouseover=""alert(1)"">test</del>") (= x "g'""></IFRAME>Hover the cursor to the LEFT of this Message</h1>&ParamHeight=250")))
(assert (not (str.in_re x (re.comp (re.union (re.inter ((_ re.loop 46 57) re.allchar) ((_ re.from_regex ecma2020 u) "^[0-9]{9,11}$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-z]{2,15}$"))))))
(check-sat)
