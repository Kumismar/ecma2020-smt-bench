; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?=^.{8,128}$)^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$") (re.union ((_ re.from_regex ecma2020 u) "(?=^.{8,128}$)^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{104}\u{107}\u{107}\u{119}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{179}\u{179} ]{4,60}$"))) ((_ re.from_regex ecma2020 u) "(?=^.{8,128}$)^(?=.*\d)(?=.*[a-zA-Z])(?!.*\s).*$")))
(check-sat)
