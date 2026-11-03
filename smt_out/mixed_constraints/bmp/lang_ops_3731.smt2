; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<option onpaste=""alert(1)"" contented\u{20000}itable>test</option>\u{10348}") (= x "<style>:target {transform: rotate(180deg);}</style><rt id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></rt>") (= x "<noscript oncopy=""alert(1)"" contenteditable>test</noscript>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^(([-\w\d]+)(\.[-\w\d]+)*@([-\w\d]+)(\.[-\w\d]+)*(\.([a-zA-Z]{2,5}|[\d]{1,3})){1,2})$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}._%+-]+@[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}.-]+\.[A-Za-z]{2,16}$")) ((_ re.from_regex ecma2020) "([0-9]{13}$)"))))
(check-sat)
