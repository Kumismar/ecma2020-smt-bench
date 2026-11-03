; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<nav onmouseout=""alert(1)"">test</nav>") (= x "<style>:target {transform: rotate(180deg);}</style><dir id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></dir>") (= x "<code oncopy=""alert(1)"" contenteditable>test</code>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[0-9]{1}$") (re.union (re.++ (str.to_re "<code") re.all) ((_ re.from_regex ecma2020) "^\S+\s\S+$"))))))
(check-sat)
