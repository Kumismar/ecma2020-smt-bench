; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed type=""image"" src=%(scriptlet)s></embed>") (= x "<a href=""\x10javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<embed draggable=""true"" ondragenter=""alert(1)"">test</embed>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{0,12}") (re.inter ((_ re.loop 71 78) re.allchar) ((_ re.from_regex ecma2020 u) "^[0-9]{5,9}$")))))
(check-sat)
