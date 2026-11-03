; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<body onBeforeUnload body onBeforeUnload=""javascript:javascript:alert(1)""></body onBeforeUnload>") (= x "<textarea oninput=alert(1)>XSS</textarea>") (= x "<big draggable=""true"" ondrag=""alert(1)"">test</big>")))
(assert (str.in_re x (re.inter (re.union (re.inter (re.++ (str.to_re "<bi") re.all) ((_ re.from_regex ecma2020 u) "^[a-z0-9._\+\-]+@[a-z0-9.\-]{2,}[.][a-z]{2,3}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$"))) ((_ re.from_regex ecma2020 u) "8"))))
(check-sat)
