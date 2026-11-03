; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<main onmousedown=""alert(1)"">test</main>") (= x "<;SCRIPT>;a=/XSS/") (= x "<div draggable=""true"" contenteditable>drag me</div><applet ondrop=alert(1) contenteditable>drop here</applet>")))
(assert (str.in_re x (re.inter (re.++ (str.to_re "<d") re.all) (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}][0-9a-z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}A-Z-._\-]*$") ((_ re.from_regex ecma2020 u) "^(?!\s*$).+")))))
(check-sat)
