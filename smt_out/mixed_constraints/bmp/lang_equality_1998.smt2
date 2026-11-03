; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^(?:[a-zA-Z\u{105}\u{119}\u{f3}\u{144}\u{142}\u{107}\u{17c}\u{17a}\u{15b}\u{107}\u{104}\u{118}\u{d3}\u{143}\u{141}\u{106}\u{17b}\u{179}\u{15a}\u{106} ]+)$") ((_ re.from_regex ecma2020) "[a-zA-Z\u{105}\u{119}\u{f3}\u{144}\u{142}\u{107}\u{17c}\u{17a}\u{15b}\u{107}\u{104}\u{118}\u{d3}\u{143}\u{141}\u{106}\u{17b}\u{179}\u{15a}\u{106} ]+")) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z\u{105}\u{119}\u{f3}\u{144}\u{142}\u{107}\u{17c}\u{17a}\u{15b}\u{107}\u{104}\u{118}\u{d3}\u{143}\u{141}\u{106}\u{17b}\u{179}\u{15a}\u{106} ]+") ((_ re.from_regex ecma2020) "^(?:[a-zA-Z\u{105}\u{119}\u{f3}\u{144}\u{142}\u{107}\u{17c}\u{17a}\u{15b}\u{107}\u{104}\u{118}\u{d3}\u{143}\u{141}\u{106}\u{17b}\u{179}\u{15a}\u{106} ]+)$")))))
(check-sat)
