; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<area draggable=""true"" ondragstart=""alert(1)"">test</area>") (= x "<style>@keyframes x{}</style><audio style=""animation-name:x"" onanimationstart=""alert(1)""></audio>") (= x "%253Cscript%253Ealert('XSS')%253C%252Fscript%253E")))
(assert (str.in_re x (re.union (re.++ re.all (str.to_re "ript%") re.all) (re.comp (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{5d0}-\u{5ea}_-].{1,50}$") ((_ re.from_regex ecma2020) "^[0-9]{3}-?[0-9]{4}$"))))))
(check-sat)
