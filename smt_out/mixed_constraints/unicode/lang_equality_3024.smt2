; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020 u) "^[A-z0-9]{1,}$") ((_ re.from_regex ecma2020 u) "[0-9]+(-[0-9]*)* *[a-zA-Z-z\u{17c}\u{17a}\u{107}\u{144}\u{f3}\u{142}\u{119}\u{105}\u{15b}\u{17b}\u{179}\u{106}\u{104}\u{15a}\u{118}\u{141}\u{d3}\u{143}\u{f6}\u{e4}\u{fc}\u{d6}\u{c4}\u{dc}\u{df} ]+")) (re.diff ((_ re.from_regex ecma2020 u) "[0-9]+(-[0-9]*)* *[a-zA-Z-z\u{17c}\u{17a}\u{107}\u{144}\u{f3}\u{142}\u{119}\u{105}\u{15b}\u{17b}\u{179}\u{106}\u{104}\u{15a}\u{118}\u{141}\u{d3}\u{143}\u{f6}\u{e4}\u{fc}\u{d6}\u{c4}\u{dc}\u{df} ]+") ((_ re.from_regex ecma2020 u) "^[A-z0-9]{1,}$")))))
(check-sat)
