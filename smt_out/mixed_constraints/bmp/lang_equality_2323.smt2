; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^\D*1(.*\d.*){10,}|^\D*[0,2-9](.*\d.*){9,}") (re.union ((_ re.from_regex ecma2020) "^\D*1(.*\d.*){10,}|^\D*[0,2-9](.*\d.*){9,}") ((_ re.from_regex ecma2020) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143}0-9 -/]){5,}$"))) ((_ re.from_regex ecma2020) "^\D*1(.*\d.*){10,}|^\D*[0,2-9](.*\d.*){9,}")))
(check-sat)
