; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=javascript:javascript:alert(1)>") (= x "<style id=x tabindex=1 onbeforeactivate=alert(1)></style>") (= x "<style>:target {transform: rotate(180deg);}</style><blink id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></blink>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9-#.!,@\[\]\(\)\/ ]+$") ((_ re.from_regex ecma2020 u) ".{8,}$"))))))
(check-sat)
