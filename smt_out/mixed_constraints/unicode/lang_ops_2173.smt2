; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<textarea draggable=""true"" ondrag=""alert(1)"">test</textarea>") (= x "<details onbeforecut=""alert(1)"" contenteditable>test</details>") (= x "<style>:target {transform: rotate(180deg);}</style><nobr id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></nobr>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^\d{2,4}-\d{3,4}-\d{3,4}$") (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z-\u{f1}\u{d1}\u{e1}\u{e9}\u{f3}\u{ed}\u{fa}\u{c1}\u{c9}\u{d3}\u{cd}\u{da} ]{1,20}$")))))))
(check-sat)
