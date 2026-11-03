; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.comp ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{8,}")))) (str.in_re x ((_ re.from_regex ecma2020) "\+?\(?\d{2,4}\)?[\d\s-]{8,}")))))
(check-sat)
