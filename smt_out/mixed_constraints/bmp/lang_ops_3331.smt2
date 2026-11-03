; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><title id=x style=""transition:trans\u{10348}form 2s"" ontransitionrun=alert(1)>\u{1d400}</title>") (= x "<sub onkeyup=""alert(1)"" contenteditable>test</sub>") (= x "<noscript draggable=""true"" ondragend=""alert(1)"">test</noscript>")))
(assert (str.in_re x (re.inter (re.inter (re.diff (re.++ re.all (str.to_re "sub>")) ((_ re.from_regex ecma2020) "[0-9]+-?[0-9]+")) ((_ re.from_regex ecma2020) "[0-9\s-]{7,20}")) (re.comp ((_ re.from_regex ecma2020) "05[0-9]{9}")))))
(check-sat)
