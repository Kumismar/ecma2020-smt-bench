; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><textarea id=x style=""transition:color 1s"" ontransitionend=alert(1)></textarea>") (= x "<source id=x tabindex=1 ondeactivate=alert(1)></source><input id=y autofocus>") (= x "<svg><style>{font-family&colon;'<iframe/onload=confirm(1)>'")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "(^(1300|1800|1900|1902)(|)[0-9]{3}(|)[0-9]{3}$)|(((^[\+]*61[2|3|4|7|8]{1})|^0[2|3|7|8]{1})(|)[0-9]{4}(|)[0-9]{4}$)|(^014(|)([0-9]{5}|[0-9]{6}|[0-9]{7})$)|(^13(|)[0-9]{4}$)|(^04[0-9]{2}(|)[0-9]{3}(|)[0-9]{3}$)") (re.inter ((_ re.from_regex ecma2020) "^[\w\p{L}\p{N}\p{Pd}\s]*$") ((_ re.from_regex ecma2020) "^([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?)+$")))))
(check-sat)
