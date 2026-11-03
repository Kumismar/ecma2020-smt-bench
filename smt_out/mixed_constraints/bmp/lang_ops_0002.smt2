; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<FRAMESET><FRAME SRC=""javascript:document.vulnerable=true;""></frameset>") (= x "<svg onmouseup=""alert(1)"">test</svg>") (= x "<style>:target {color:red;}</style><q id=x style=""transition:color 1s"" ontransitionend=alert(1)></q>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z!@#$%^&*()]{8,}$") ((_ re.from_regex ecma2020) "[0-9a-zA-Z-\u{c1}\u{c0}\u{c2}\u{c4}\u{c9}\u{c8}\u{ca}\u{cb}\u{cd}\u{cc}\u{ce}\u{cf}\u{d3}\u{d2}\u{d4}\u{d6}\u{da}\u{d9}\u{db}\u{dc}\u{e1}\u{e0}\u{e2}\u{e4}\u{e9}\u{e8}\u{ea}\u{eb}\u{ed}\u{ec}\u{ee}\u{ef}\u{f3}\u{f2}\u{f4}\u{f6}\u{fa}\u{f9}\u{fb}\u{fc}\u{c7}'\u{e7},.\u{20ac}\u{a3}$_ \.]{2,100}$")))))
(check-sat)
