; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><keygen id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></keygen>") (= x "<dl id=x tabindex=1 ondeactivate=alert(1)></dl><input id=y autofocus>") (= x "<link rel=""stylesheet"" href=""javascript:document.vulnerable=true;"">")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "^\d{9,9}$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{c0}-\u{ff}][a-zA-Z\u{c0}-\u{ff}]+([-'\s][a-zA-Z\u{c0}-\u{ff}][a-zA-Z\u{c0}-\u{ff}]+)?")) ((_ re.from_regex ecma2020) "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$"))))
(check-sat)
