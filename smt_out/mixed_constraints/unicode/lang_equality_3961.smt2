; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "\(?(\d{3})\)?[-\. ]?(\d{3})[-\. ]?(\d{4})$") (re.inter ((_ re.from_regex ecma2020 u) "\(?(\d{3})\)?[-\. ]?(\d{3})[-\. ]?(\d{4})$") ((_ re.from_regex ecma2020 u) "^[A-\u{139}\u{13e}0-9. _-]{5,}$"))) ((_ re.from_regex ecma2020 u) "\(?(\d{3})\)?[-\. ]?(\d{3})[-\. ]?(\d{4})$"))))
(check-sat)
