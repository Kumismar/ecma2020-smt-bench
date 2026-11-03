; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><sub id=x style=""transition:color 1s"" ontransitionend=alert(1)></sub>") (= x "<keygen oncut=""alert(1)"" contenteditable>test</keygen>") (= x "<marquee oncontextmenu=""alert(1)"">test</marquee>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^#+([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$") ((_ re.from_regex ecma2020 u) "[a-z]"))))
(check-sat)
