; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "^(?:[A-Za-z\u{104}\u{105}\u{106}\u{107}\u{118}\u{119}\u{141}\u{142}\u{143}\u{144}\u{d3}\u{f3}\u{15a}\u{15b}\u{17b}\u{17c}\u{179}\u{17a} ]+)$") ((_ re.from_regex ecma2020) "[A-Za-z\u{104}\u{105}\u{106}\u{107}\u{118}\u{119}\u{141}\u{142}\u{143}\u{144}\u{d3}\u{f3}\u{15a}\u{15b}\u{17b}\u{17c}\u{179}\u{17a} ]+")))
(check-sat)
