; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><body ondragover=alert(1) contenteditable>drop here</body>") (= x "<style>:target {transform: rotate(180deg);}</style><rt id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></rt>") (= x "<img onkeyup=""alert(1)"" contenteditable>test</img>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9]{3,9}$") (re.diff (re.diff ((_ re.from_regex ecma2020) ".{0}|.{10}|.{13}") ((_ re.from_regex ecma2020) "^0(7|8|9)0\d{8}$")) (re.comp (re.++ re.all (str.to_re "</rt>")))))))
(check-sat)
