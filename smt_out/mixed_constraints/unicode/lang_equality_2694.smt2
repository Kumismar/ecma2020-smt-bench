; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}$") ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")) (re.inter ((_ re.from_regex ecma2020 u) "^(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}$") (re.comp ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}$") (re.comp ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$"))) (re.diff ((_ re.from_regex ecma2020 u) "^(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}[ ]{0,}(\d){0,}$") ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$"))))))
(check-sat)
