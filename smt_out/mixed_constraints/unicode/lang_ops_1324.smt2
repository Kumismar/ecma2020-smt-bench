; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<object id=x onfocusin=alert(1) type=text/html>") (= x "<dt onmouseenter=""alert(1)"">test</dt>") (= x "<img id=x tabindex=1 onbeforedeactivate=alert(1)></img><input autofocus>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_.]{5,25}$") (re.comp ((_ re.from_regex ecma2020 u) "^@[A-Za-z0-9-_]{1,15}$"))))))
(check-sat)
