; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_suffix, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "(?:^\u{41d}\u{43e}\u{43c}\u{435}\u{440} \u{442}\u{435}\u{43b}\u{435}\u{444}\u{43e}\u{43d}\u{443}$).*")) (str.in_re x ((_ re.from_regex ecma2020) "^\u{41d}\u{43e}\u{43c}\u{435}\u{440} \u{442}\u{435}\u{43b}\u{435}\u{444}\u{43e}\u{43d}\u{443}$")))))
(check-sat)
