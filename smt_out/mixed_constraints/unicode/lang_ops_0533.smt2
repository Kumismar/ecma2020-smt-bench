; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<img \x00src=x onerror=""javascript:alert(1)"">") (= x "<cite onpaste=""alert(1)"" contenteditable>test</cite>") (= x "<style>:target {transform: rotate(180deg);}</style><meter id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></meter>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z-\s]+$") ((_ re.from_regex ecma2020 u) "[^~!@#$%\^*()_+=\{\}\[\]|\\:;<>?\/]{1,6}")))))
(check-sat)
