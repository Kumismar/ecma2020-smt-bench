; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^(?:0|\(?\+33\)?\s?|0033\s?)[1-9](?:[\.\-\s]?\d\d){4}$") ((_ re.from_regex ecma2020 u) "(?:^(?:0|\(?\+33\)?\s?|0033\s?)[1-9](?:[\.\-\s]?\d\d){4}$)|table>"))))
(check-sat)
