; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed code=javascript:javascript:alert(1);></embed>") (= x "<param id=x tabindex=1 onactivate=alert(1)></param>") (= x "<menu id=x tabindex=1 onfocusin=alert(1)></menu>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z0-9-_]{3,20}$") (re.inter ((_ re.loop 46 55) re.allchar) ((_ re.from_regex ecma2020 u) "^\+[0-9]?()[0-9](\s|\S)(\d[0-9]{9})$")))))
(check-sat)
