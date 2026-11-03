; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "(?:[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{1,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[\u{200c}\u{200b}a-zA-Z]{2,}))(?:\)><)?")) (str.in_re x ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]{3,}@[a-zA-Z]{1,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[\u{200c}\u{200b}a-zA-Z]{2,})")))))
(check-sat)
