; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color: red;}</style><colgroup id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></colgroup>") (= x "<style>:target {transform: rotate(180deg);}</style><h1 id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></h1>") (= x "<colgroup onpaste=""alert(1)"" contenteditable>test</colgroup>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(\d{1,2})-(\d{1,2})-(\d{4})$") ((_ re.from_regex ecma2020) "(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"))))))
(check-sat)
