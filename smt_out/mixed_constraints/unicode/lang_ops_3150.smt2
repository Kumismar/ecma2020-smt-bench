; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><b style=""animation-name:x"" onanimationstart=""alert(1)""></b>") (= x "<rect  fill=""white"" style=""clip-path:url(test3.svg#a);fill:url(#b);filter:url(#c);marker:url(#d);mask:url(#e);stroke:url(#f);""/>") (= x "<section onmouseenter=""alert(1)"">test</section>")))
(assert (str.in_re x (re.union (re.++ re.all (str.to_re "lert") re.all) (re.diff ((_ re.from_regex ecma2020 u) "^\D*(?:\d\D*){10,}$") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z_.-]+@[0-9a-zA-Z.-]+\.[a-zA-Z]{2,3}$")))))
(check-sat)
