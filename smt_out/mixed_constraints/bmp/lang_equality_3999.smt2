; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^([\w-])+@([\w-])+(\.[\w-])+") ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$")) (re.inter ((_ re.from_regex ecma2020) "^([\w-])+@([\w-])+(\.[\w-])+") ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^([\w-])+@([\w-])+(\.[\w-])+") ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$")) (re.union ((_ re.from_regex ecma2020) "^([\w-])+@([\w-])+(\.[\w-])+") ((_ re.from_regex ecma2020) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$"))))))
(check-sat)
