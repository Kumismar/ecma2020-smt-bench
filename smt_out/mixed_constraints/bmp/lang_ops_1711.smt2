; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<form id=x tabindex=1 onbeforeactivate=alert(1)></form>") (= x "<input oncopy=alert(1) value=""XSS"" autofocus>") (= x "<tt onmousedown=""alert(1)"">test</tt>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^.{1,30}$") ((_ re.from_regex ecma2020) "([1-9])+(?:-?\d){4,}"))))))
(check-sat)
