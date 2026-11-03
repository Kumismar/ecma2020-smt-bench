; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<rt draggable=""true"" ondragenter=""alert(1)"">test</rt>") (= x "<input type=image onloadstart=alert(1) src=validimage.png>") (= x "<header id=x tabindex=1 onfocus=alert(1)></header>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}A-Za-z\s]{3,30}") ((_ re.from_regex ecma2020 u) "^.{0,40}$"))))
(check-sat)
