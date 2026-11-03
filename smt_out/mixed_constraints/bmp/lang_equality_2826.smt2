; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(([^<>()\[\]\.,;:\s@]+(\.[^<>()\[\]\.,;:\s@]+)*)|(.+))@(([^<>()[\]\.,;:\s@]+\.)+[^<>()[\]\.,;:\s@]{2,})$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9\u{251c}\u{17e}\u{251c}\u{2592}\u{251c}\u{e7}\u{251c}\u{139}\u{252c}\u{2551}\u{252c}\u{ac}\u{251c}\u{ed}\u{251c}\u{119}\u{251c}\u{15f}\u{251c}\u{2502}\u{251c}\u{2551}\u{251c}\u{e1}\u{251c}\u{118}\u{251c}\u{10c}\u{251c}\u{2593}\u{251c}\u{2563}\u{251c}\u{fc}\u{251c}\u{eb}\u{251c}\u{179}\u{251c}\u{f4}\u{251c}\u{dc}\u{251c}\u{c7}\u{251c}\u{142}\u{251c}\u{ee}\u{251c}\u{13a}\u{251c}\u{d6}\u{251c}\u{104}\u{251c}\u{17a}\u{251c}\u{bb}\u{251c}\u{c2}\u{251c}\u{255d}\u{251c}\u{e4}\u{251c}\u{151}\u{251c}\u{106}\u{251c}\u{13e}\u{251c}\u{165} ]+"))) (str.in_re x ((_ re.from_regex ecma2020) "^(([^<>()\[\]\.,;:\s@]+(\.[^<>()\[\]\.,;:\s@]+)*)|(.+))@(([^<>()[\]\.,;:\s@]+\.)+[^<>()[\]\.,;:\s@]{2,})$")))))
(check-sat)
