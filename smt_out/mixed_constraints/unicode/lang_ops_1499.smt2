; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<menu onmouseenter=""alert(1)"">test</menu>") (= x "<strike ondblclick=""alert(1)"">test</strike>") (= x "<dfn draggable=""true"" ondragleave=""alert(1)"">test</dfn>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,5}$") ((_ re.from_regex ecma2020 u) "[0-9]{9}|[0-9]{14}"))))
(check-sat)
