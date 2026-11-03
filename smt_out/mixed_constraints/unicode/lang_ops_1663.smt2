; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "b=\""URL(\\""\"";") (= x "<frameset onmouseenter=""alert(1)"">test</frameset>") (= x "<style>:target {color:red;}</style><kbd id=x style=""transition:color 1s"" ontransitionend=alert(1)></kbd>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1}))+\d{8})") (re.comp (re.++ (str.to_re "<fram") re.all))) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9\s]{0,18}$"))))))
(check-sat)
