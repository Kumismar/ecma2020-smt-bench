; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<samp onmouseover=""alert(1)"">test</samp>") (= x "<style>:target {color:red;}</style><a id=x style=""transition:color 1s"" ontransitionend=alert(1)></a>") (= x "<svg><br onload=alert(1)></br>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9. \-]{2,64}") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401} ]+"))))
(check-sat)
