; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[^\u{5c}u0026\u{5c}u003C\u{b1}!@\u{a3}$%^*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\\/>?:;|=,\d]+$") ((_ re.from_regex ecma2020 u) "^\d{3,5}$")) (re.inter ((_ re.from_regex ecma2020 u) "^\d{3,5}$") ((_ re.from_regex ecma2020 u) "^[^\u{5c}u0026\u{5c}u003C\u{b1}!@\u{a3}$%^*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\\/>?:;|=,\d]+$"))))
(check-sat)
