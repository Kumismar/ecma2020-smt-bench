; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<th id=x tabindex=1 onbeforedeactivate=alert(1)></th><input autofocus>") (= x "<style>:target {transform: rotate(180deg);}</style><center id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></center>") (= x "<ins draggable=""true"" ondragend=""alert(1)"">test</ins>")))
(assert (str.in_re x (re.union (re.diff (re.++ (str.to_re "<") re.all) ((_ re.from_regex ecma2020 u) "^([A-Fa-f0-9]{3}){1,2}$")) (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^([A-Z,\u{d1},&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9][A-Z,0-9][0-9,A-Z])$") ((_ re.from_regex ecma2020 u) "^([0-9\-\(\) ]*)$"))))))
(check-sat)
