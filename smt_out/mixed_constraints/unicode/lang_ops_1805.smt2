; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<body onbeforeunload=""location='javascript:alert(1)'"">") (= x "<style>:target {transform: rotate(180deg);}</style><center id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></center>") (= x "<rt id=x tabindex=1 \u{20000}onfocusi\u{10348}n=alert(1)></rt>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9_.+-]+@[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}0-9_.-]+.[a-zA-Z\u{430}-\u{44f}\u{410}-\u{42f}]{2,}$") ((_ re.from_regex ecma2020 u) "^(\+420|\+421|00420|00421)?[ ]*[0-9]{3}[ ]*[0-9]{3}[ ]*[0-9]{3}$")))))
(check-sat)
