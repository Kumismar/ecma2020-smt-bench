; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<table BACKGROUND=""javascript:document.vulnerable=true;"">") (= x "<col id=x tabindex=1 ondeactivate=alert(1)></col><input id=y autofocus>") (= x "<IMG SRC=x onmouseup=""alert(String.fromCharCode(88,83,83))"">")))
(assert (str.in_re x (re.diff (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9_\+-]+(\.[A-Za-z0-9_\+-]+)*@[A-Za-z0-9-]+(\.[A-Za-z0-9-]+)*\.([A-Za-z]{2,4})$") ((_ re.from_regex ecma2020) "^[A-Za-z]{4,20}$")) ((_ re.from_regex ecma2020) "^[0-9]+")) ((_ re.loop 57 60) re.allchar))))
(check-sat)
