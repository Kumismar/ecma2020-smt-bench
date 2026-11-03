; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<time onkeypress=""alert(1)"" contenteditable>test</time>") (= x "<style>*[{}@import'%(css)s?]</style>X") (= x "<style>@keyframes x{}</style><ruby style=""animation-name:x"" onanimationend=""alert(1)""></ruby>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(?=.{5,32}$)(?![_.])(?!.*[_.]{2})[a-zA-Z0-9._]+$") (re.diff ((_ re.from_regex ecma2020) "[0-9\.]{1,5}") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_\.]{6,20}$")))))
(check-sat)
