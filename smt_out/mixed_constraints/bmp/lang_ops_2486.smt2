; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<ol draggable=""true"" ondragenter=""alert(1)"">test</ol>") (= x "<time id=x tabindex=1 onbeforedeactivate=alert(1)></time><input autofocus>") (= x "<ins draggable=""true"" ondragstart=""alert(1)"">test</ins>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^(\d{2,3}|\(\d{2,3}\))?[ ]?\d{4,5}[-]?\d{4}$") ((_ re.from_regex ecma2020) "https[A-Za-z0-9:_.\-/\x22,\x27]{1,620}")) ((_ re.from_regex ecma2020) "^[a-z0-9._\+\-]+@[a-z0-9.\-]{2,}[.][a-z]{2,3}$"))))
(check-sat)
