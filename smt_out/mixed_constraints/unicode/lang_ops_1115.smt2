; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg onkeypress=""alert(1)"" contenteditable>test</svg>") (= x "<style>:target {color:red;}</style><bgsound id=x style=""transition:color 1s"" ontransitionend=alert(1)></bgsound>") (= x "<img onpaste=""alert(1)"" contenteditable>test</img>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{3,25}$") (re.comp (re.diff (re.++ re.all (str.to_re "nd>")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z]([a-zA-Z0-9\-]){1,}[a-zA-Z0-9]$")))))))
(check-sat)
