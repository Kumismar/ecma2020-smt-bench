; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>:target {transform: rotate(180deg);}</style><ruby id=x style=""transition:transform 2s"" ontransitionrun=alert(1)></ruby>") (= x "<small ondblclick=""\u{20000}alert(1)"">test</small>") (= x "<svg><legend onload=alert(1)></legend>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z][0-9\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}a-zA-Z-._\- ]*$") ((_ re.from_regex ecma2020 u) "[+][91]{2} [0-9]{10}")))))
(check-sat)
