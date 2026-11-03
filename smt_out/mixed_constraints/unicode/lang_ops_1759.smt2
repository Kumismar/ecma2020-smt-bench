; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<td onmousedown=""alert(1)"">test</td>") (= x "<style>:target {transform: rotate(180deg);}</style><form id=x style=""transiti\u{20000}on:transform 2s"" ontrans\u{1f600}itionrun=alert(1)></form>") (= x "<output onmouseleave=""alert(1)"">test</output>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\d{17}[0-9xX]$") ((_ re.from_regex ecma2020 u) "(^\d{5}(-\d{4})?$)|(^[abceghjklmnprstvxyABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Za-z]{1} *\d{1}[A-Za-z]{1}\d{1}$)")))))
(check-sat)
