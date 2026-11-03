; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^\d{5}([\-]\d{4})?$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17c}\u{17a}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179} ]+")) (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17c}\u{17a}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179} ]+") ((_ re.from_regex ecma2020 u) "^\d{5}([\-]\d{4})?$"))) (re.diff (re.diff ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17c}\u{17a}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179} ]+") ((_ re.from_regex ecma2020 u) "^\d{5}([\-]\d{4})?$")) (re.diff ((_ re.from_regex ecma2020 u) "^\d{5}([\-]\d{4})?$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17c}\u{17a}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179} ]+"))))))
(check-sat)
