; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<frameset id=x tabindex=1 onbeforeactivate=alert(1)></frameset>") (= x "<style id=x tabindex=1 onbeforedeactivate=alert(1)></style><input autofocus>") (= x "<style>:target {transform: rotate(180deg);}</style><iframe id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></iframe>")))
(assert (str.in_re x (re.union (re.diff (re.++ (str.to_re "<") re.all) ((_ re.from_regex ecma2020) "^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$")) (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\-\.\+]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$")))))
(check-sat)
