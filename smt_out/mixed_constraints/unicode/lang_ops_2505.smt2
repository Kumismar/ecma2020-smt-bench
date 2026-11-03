; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<figcaption onmousemove=""alert(1)"">test</figcaption>") (= x "<input onmousemove=""alert(1)"">test</input>") (= x "`""'><img src=xxx:x \x22onerror=javascript:alert(1)>")))
(assert (not (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020 u) "^((?!Exeno)(?!HenryExeno)(?!Robot).)*$") ((_ re.from_regex ecma2020 u) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[_#]).{8,}")) ((_ re.from_regex ecma2020 u) "^((([!#$%&'*+\-/=?^_`{|}~\w])|([!#$%&'*+\-/=?^_`{|}~\w][!#$%&'*+\-/=?^_`{|}~\.\w]{0,}[!#$%&'*+\-/=?^_`{|}~\w]))[@]\w+([-.]\w+)*\.\w+([-.]\w+)*)$")))))
(check-sat)
