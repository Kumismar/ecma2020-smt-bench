; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><embed id=x style=""transition:color 1s"" ontransitionend=alert(1)></embed>") (= x "<style>\u{1d400}@keyframes x{}</style><pre style=""animation-name:x"" onanimationstart=""al\u{10348}ert(1)""></pre>") (= x "perl -e &#039;print \"";<;SCR\0IPT>;alert(\"";XSS\"";)<;/SCR\0IPT>;\"";;&#039; >; out")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}0-9()\s\-\.]{1,30}") (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{4,8}") ((_ re.from_regex ecma2020 u) "(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b")))))
(check-sat)
