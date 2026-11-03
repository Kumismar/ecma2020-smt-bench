; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{2018}'\u{2019}\u{b4}`\u{454}\u{404}\u{457}\u{407}\u{406}i\u{490}\u{491}\s]+$") ((_ re.from_regex ecma2020 u) "^[0-9]{2,13}$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\u{2018}'\u{2019}\u{b4}`\u{454}\u{404}\u{457}\u{407}\u{406}i\u{490}\u{491}\s]+$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{2,13}$")))))))
(check-sat)
