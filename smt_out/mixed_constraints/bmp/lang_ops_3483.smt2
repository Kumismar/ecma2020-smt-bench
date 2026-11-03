; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<option onbeforecut=""alert(1)"" contenteditable>test</option>") (= x "<style>:target {transform: rotate(180deg);}</style><script id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></script>") (= x "<param id=x tabindex=1 ondeactivate=alert(1)></param><input id=y autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^.{9,10}$") (re.inter ((_ re.from_regex ecma2020) "^[0-9+\\s]*$") (re.++ re.all (str.to_re "transf") re.all)))))
(check-sat)
