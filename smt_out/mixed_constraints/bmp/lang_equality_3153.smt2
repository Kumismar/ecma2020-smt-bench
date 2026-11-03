; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\-\.\(\)\s]+$") ((_ re.from_regex ecma2020) "^[_A-Za-z0-9-+.]+([_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*(.[A-Za-z]{2,4}){1,2}$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\-\.\(\)\s]+$")) (re.comp ((_ re.from_regex ecma2020) "^[_A-Za-z0-9-+.]+([_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(.[A-Za-z0-9-]+)*(.[A-Za-z]{2,4}){1,2}$")))))))
(check-sat)
