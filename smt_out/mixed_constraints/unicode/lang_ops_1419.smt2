; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<colgroup onblur=alert(1) tabindex=1 id=x></colgroup><input autofocus>") (= x "<noframes oncut=""alert(1)"" contenteditable>test</noframes>") (= x "<keygen onkeydown=""alert(1)"" contenteditable>test</keygen>")))
(assert (str.in_re x (re.inter (re.union (re.inter (re.++ (str.to_re "<colg") re.all) (re.comp ((_ re.from_regex ecma2020 u) "^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,}$"))) (re.comp ((_ re.from_regex ecma2020 u) "^\w[\w.-]*@([\w-]+\.)+[\w-]+$"))) ((_ re.from_regex ecma2020 u) "^[1-6]{2,5}$"))))
(check-sat)
