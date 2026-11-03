; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{3,}") (re.inter ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{3,}") ((_ re.from_regex ecma2020) "^$|(0[1-9]|1[0-2])/(0[1-9]|[12]\d|3[01])/[0-9]{4}"))) ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{3,}")))
(check-sat)
