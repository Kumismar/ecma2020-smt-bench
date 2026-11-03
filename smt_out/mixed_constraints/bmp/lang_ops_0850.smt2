; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><dialog style=""animation-name:x"" onanimationend=""alert(1)""></dialog>") (= x "<x </onxxx=1") (= x "<iframe onkeyup=""alert(1)"" contenteditable>test</iframe>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^[0-9 ]+$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b} ]*$")) (re.comp ((_ re.loop 88 102) re.allchar)))))
(check-sat)
