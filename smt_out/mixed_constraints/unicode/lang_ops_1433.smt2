; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input onblur=javascript:alert(1) autofocus><input autofocus>") (= x "<label id=x tabindex=1 onfocusin=alert(1)></label>") (= x "<dir id=x tabindex=1 onbeforeactivate=alert(1)></dir>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,30}$") (re.union ((_ re.from_regex ecma2020 u) "^[0-9(\-+)\s]+$") ((_ re.loop 57 71) re.allchar)))))
(check-sat)
