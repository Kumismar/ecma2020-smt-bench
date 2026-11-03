; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^((\+?)\d\s*\(?\d{3}\)?)+\s*\d{3}(-?\d{2}){2}$") ((_ re.from_regex ecma2020 u) "^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_-]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[^0-9][a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[@][a-zA-Z0-9_-]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020 u) "^((\+?)\d\s*\(?\d{3}\)?)+\s*\d{3}(-?\d{2}){2}$"))))
(check-sat)
