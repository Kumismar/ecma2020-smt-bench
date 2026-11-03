; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><shadow id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></shadow>") (= x "<blockquote onmouseout=""alert(1)"">test</blockquote>") (= x "<div draggable=""true"" contenteditable>drag me</div><meter ondragover=alert(1) contenteditable>drop here</meter>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._]+(?<![_.])$") (re.union ((_ re.from_regex ecma2020 u) "^.{5}$") (re.comp (re.++ re.all (str.to_re "rotate") re.all))))))))
(check-sat)
