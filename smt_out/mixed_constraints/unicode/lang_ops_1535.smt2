; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg draggable=""true"" ondragenter=""alert(1)"">test</svg>") (= x "<isindex onblur=alert(1) tabindex=1 id=x></isindex><input autofocus>") (= x "<nav onmouseout=""alert(1)"">test</nav>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z ]{2,100}$") (re.comp ((_ re.from_regex ecma2020 u) "^[0]{1}[0-9]{2,3}")))))
(check-sat)
