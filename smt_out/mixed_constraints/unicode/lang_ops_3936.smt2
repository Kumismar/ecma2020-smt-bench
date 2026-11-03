; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<main onbeforecopy=""alert(1)"" contenteditable>test</main>") (= x "<dl onpaste=""alert(1)"" contenteditable>test</dl>") (= x "<track onkeyup=""alert(1)"" contenteditable>test</track>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[1][3578][0-9]{9}$") (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z]([-_a-zA-Z0-9]{5,19})+$") (re.inter (re.++ re.all (str.to_re "test</") re.all) ((_ re.from_regex ecma2020 u) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143}0-9 -/]){5,}$")))))))
(check-sat)
