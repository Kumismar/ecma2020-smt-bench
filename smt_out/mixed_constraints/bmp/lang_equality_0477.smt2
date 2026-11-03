; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^[^\u{5c}u0026\u{5c}u003C\u{b1}!@\u{a3}$%^*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\\/>?:;|=,\d]+$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{0,64}")) (re.diff ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{0,64}") ((_ re.from_regex ecma2020) "^[^\u{5c}u0026\u{5c}u003C\u{b1}!@\u{a3}$%^*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\\/>?:;|=,\d]+$")))))
(check-sat)
