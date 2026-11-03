; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<q onmouseout=""alert(1)"">test</q>") (= x "<style>@keyframes x{}</style><dd style=""animation-name:x"" onanimationstart=""alert(1)""></dd>") (= x "<blockquote onmouseenter=""alert(1)"">test</blockquote>")))
(assert (str.in_re x (re.union (re.inter (re.union ((_ re.from_regex ecma2020) "^((\+|00)[0-9][0-9])?([0-9]{9,10})$") ((_ re.from_regex ecma2020) "^[0-9a-zA-Z_ -]{1,20}")) (re.++ re.all (str.to_re "</b") re.all)) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\s]*$")))))
(check-sat)
