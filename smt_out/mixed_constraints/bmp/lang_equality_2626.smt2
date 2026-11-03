; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^(?:[0-9]??).{9,14}[0-9]$") ((_ re.from_regex ecma2020) "^[+]?([(][0-9]{1,3}[)][-]?)?([0-9][-]?){3,16}[0-9]$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020) "^(?:[0-9]??).{9,14}[0-9]$")) (re.comp ((_ re.from_regex ecma2020) "^[+]?([(][0-9]{1,3}[)][-]?)?([0-9][-]?){3,16}[0-9]$")))))))
(check-sat)
