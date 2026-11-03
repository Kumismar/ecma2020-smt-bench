; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "^\w+.\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}\-]{3,20}$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}\-]{3,20}$") ((_ re.from_regex ecma2020) "^\w+.\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$"))))
(check-sat)
