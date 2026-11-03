; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.diff ((_ re.from_regex ecma2020 u) "^[a-z0-9](\.?[a-z0-9_-]){0,}@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$") ((_ re.from_regex ecma2020 u) "(-?[0-9]{0,2})|(-?[0-9]{0,2}\.(?=[0-9])[0-9]*)")) (re.inter ((_ re.from_regex ecma2020 u) "^[a-z0-9](\.?[a-z0-9_-]){0,}@[a-z0-9-]+\.([a-z]{1,6}\.)?[a-z]{2,6}$") (re.comp ((_ re.from_regex ecma2020 u) "(-?[0-9]{0,2})|(-?[0-9]{0,2}\.(?=[0-9])[0-9]*)"))))))
(check-sat)
