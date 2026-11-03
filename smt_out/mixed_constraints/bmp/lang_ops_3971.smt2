; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<picture ondblclick=""alert(1)"">test</picture>") (= x "<dialog ondblclick=""alert(1)"">test</dialog>") (= x "<image draggable=""true"" ondragend=""alert(1)"">test</image>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[\u{e01}-\u{e4f}\s]+$") ((_ re.from_regex ecma2020) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143} /]){2,}$")))))
(check-sat)
