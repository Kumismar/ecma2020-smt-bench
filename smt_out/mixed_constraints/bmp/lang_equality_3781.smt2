; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{92}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+([\.]{1})[0-9a-zA-Z\._-]+$") ((_ re.from_regex ecma2020) "[A-Za-z0-9 \u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179}/.]{2,}")) (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9 \u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{17b}\u{179}/.]{2,}") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{92}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+([\.]{1})[0-9a-zA-Z\._-]+$")))))
(check-sat)
