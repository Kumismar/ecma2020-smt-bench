; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<param ondblclick=""alert(1)"">test</param>") (= x "<style>:target {transform: rotate(180deg);}</style><var id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></var>") (= x "<div draggable=""true"" contenteditable>drag me</div><span ondragover=alert(1) contenteditable>drop here</span>")))
(assert (str.in_re x (re.diff (re.union (re.inter (re.++ (str.to_re "<div") re.all) ((_ re.from_regex ecma2020 u) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$")) ((_ re.from_regex ecma2020 u) "[^0-9~!@#$%\^*()_+=\{\}\[\]|\\:;<>?\/]{1,10}")) ((_ re.from_regex ecma2020 u) "^(?!s).*$"))))
(check-sat)
