; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><col id=x style=""transition:color 1s"" ontransitionend=alert(1)></col>") (= x "<marquee onclick=""alert(1)"">test</marquee>") (= x "<script id=x tabindex=1 ondeactivate=alert(1)></script><input id=y autofocus>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^(\w[-._\w]*\w@\w[-._\w]*\w\.\w{2,3})$") ((_ re.from_regex ecma2020) "^([A-Z]|[a-z]|[0-9]){8,11}$")) (re.comp (re.++ re.all (str.to_re "arg") re.all))))))
(check-sat)
