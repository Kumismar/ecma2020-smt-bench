; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{f1}\u{d1} _]*[A-Za-z0-9\u{f1}\u{d1}][A-Za-z0-9\u{f1}\u{d1} _]*$") ((_ re.from_regex ecma2020) "^[\w](?!.*?\.{2})[\w.]{1,28}[\w]$")) (re.inter ((_ re.from_regex ecma2020) "^[\w](?!.*?\.{2})[\w.]{1,28}[\w]$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9\u{f1}\u{d1} _]*[A-Za-z0-9\u{f1}\u{d1}][A-Za-z0-9\u{f1}\u{d1} _]*$")))))
(check-sat)
