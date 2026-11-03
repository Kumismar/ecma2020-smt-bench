; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&lt;/script&gt;&lt;script&gt;alert(1)&lt;/script&gt;") (= x "<x '=""foo""><x foo='><img src=x onerror=alert(62)//'>") (= x "<x %6Fnxxx=1")))
(assert (not (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020 u) "^[_A-z0-9._%+-]+@[_A-z0-9.-]+\.[_A-z]{1,}$") ((_ re.from_regex ecma2020 u) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143} /]){2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^AX\d{3,7}|AI\d{3,7}$"))))))
(check-sat)
