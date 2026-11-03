; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<figur\u{1f600}e onmouseout=""aler\u{1f4a9}t(1)"">test</figure>") (= x "<style>:target {color:red;}</style><source id=x style=""transition:color 1s"" ontransitionend=alert(1)></source>") (= x "<meta onmouseleave=""alert(1)"">test</meta>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([0-9]{4})\s?([A-Za-z]{2})$") (re.inter ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W]*\s[\u{410}-\u{42f}\u{430}-\u{44f}]{1}[\u{410}-\u{42f}\u{430}-\u{44f}\W][ \u{410}-\u{42f}\u{430}-\u{44f}\W]*") (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z\u{c0}-\u{d6}\u{d8}-\u{f6}\u{f8}-\u{ff}-0-9$, ]{2,99}$"))))))
(check-sat)
