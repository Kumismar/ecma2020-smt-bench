; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020) ".{15,}\w*[a-zA-Z]\w*") ((_ re.from_regex ecma2020) "^[\w\-\.]{5,25}$")) (re.diff ((_ re.from_regex ecma2020) "^[\w\-\.]{5,25}$") ((_ re.from_regex ecma2020) ".{15,}\w*[a-zA-Z]\w*")))))
(check-sat)
