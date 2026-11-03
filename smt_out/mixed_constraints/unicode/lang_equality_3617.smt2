; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b")) (str.in_re x ((_ re.from_regex ecma2020 u) "^(?:(?:\b|-)(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20)\b)$")))))
(check-sat)
