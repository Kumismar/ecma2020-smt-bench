; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "(?:[A-Z][AEIOUX][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][MH][A-Z][BCDEFGHJKLMN\u{d1}PQRSTVWXYZ]{4}[0-9A-Z][0-9])(?:en)?")) (str.in_re x ((_ re.from_regex ecma2020 u) "[A-Z][AEIOUX][A-Z]{2}[0-9]{2}[0-1][0-9][0-3][0-9][MH][A-Z][BCDEFGHJKLMN\u{d1}PQRSTVWXYZ]{4}[0-9A-Z][0-9]")))))
(check-sat)
