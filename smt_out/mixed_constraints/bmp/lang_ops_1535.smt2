; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><img ondragover=alert(1) contenteditable>drop here</img>") (= x "<style>:target {transform: rotate(180deg);}</style><footer id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></footer>") (= x "<area oncut=""alert(1)"" contenteditable>test</area>")))
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "[1-9]+") ((_ re.from_regex ecma2020) "^0\d{1,3}-\d{7,8}(#\d+)?")) ((_ re.from_regex ecma2020) "^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$"))))
(check-sat)
