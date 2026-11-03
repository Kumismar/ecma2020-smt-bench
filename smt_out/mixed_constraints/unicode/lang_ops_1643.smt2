; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<hr id=x tabindex=1 onbeforeactivate=alert(1)></hr>") (= x "<body onunhandledrejection=alert(1)><script>fetch('//xyz')</script>") (= x "<style>:target {color:red;}</style><output id=x style=""transition:color 1s"" ontransitionend=alert(1)></output>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020 u) "^[01]?[- .]?\(?[2-9]\d{2}\)?[- .]?\d{3}[- .]?\d{4}$") ((_ re.from_regex ecma2020 u) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d\w\W]{6,}$")) ((_ re.from_regex ecma2020 u) "^(([^<>()\[\]\\.,;:\s@""]+(\.[^<>()\[\]\\.,;:\s@""]+)*)|("".+""))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))"))))
(check-sat)
