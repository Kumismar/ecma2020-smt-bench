; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<tbody onmouseleave=""alert(1)"">test</tbody>") (= x "<li onkeypress=""alert(1)"" contenteditable>test</li>") (= x "<meta onpaste=""alert(1)"" contenteditable>test</meta>")))
(assert (not (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z ]+ [A-Za-z ]+") (re.comp ((_ re.from_regex ecma2020 u) "[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}A-Za-z\s]{3,30}"))) (re.++ re.all (str.to_re "le") re.all)))))
(check-sat)
