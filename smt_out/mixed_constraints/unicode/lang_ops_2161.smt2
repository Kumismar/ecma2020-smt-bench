; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<audio draggable=""true"" on\u{20000}dragend=""alert(1)\u{1f600}"">test</audio>") (= x "<style>:target {transform: rotate(180deg);}</style><caption id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></caption>") (= x "<xss id=x tabindex=1 onfocusout=alert(1)></xss><input autofocus>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "([0-9]{5})|([0-9]{3} [0-9]{2})") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(0|86|17951)?(13[0-9]|15[012356789]|166|17[35678]|18[0-9]|14[57]|19[8])[0-9]{8}$") ((_ re.from_regex ecma2020 u) "^3\d{2}\d{6,7}$$")))))))
(check-sat)
