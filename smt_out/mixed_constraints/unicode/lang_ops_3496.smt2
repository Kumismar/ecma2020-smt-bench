; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><dt id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></dt>") (= x "<noscript onbeforepaste=""alert(1)"" contenteditable>test</noscript>") (= x "<style>:target {color:red;}</style><th id=x style=""transition:color 1s"" ontransitionend=alert(1)></th>")))
(assert (str.in_re x (re.diff (re.diff (re.++ re.all (str.to_re ">")) ((_ re.from_regex ecma2020 u) "^[\w\W]{6,20}$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z]+ [a-zA-Z]+$"))))
(check-sat)
