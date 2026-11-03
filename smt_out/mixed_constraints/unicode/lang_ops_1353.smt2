; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<acronym draggable=""true"" ondragend=""alert(1)"">test</acronym>") (= x "<button onmouseout=""alert(1)"">test</button>") (= x "<textarea oninput=alert(1)>XSS</textarea>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9][a-zA-Z0-9\- ]{0,10}?[a-zA-Z0-9]$") (re.comp ((_ re.from_regex ecma2020 u) "^@[A-Za-z0-9_]{1,15}$"))))))
(check-sat)
