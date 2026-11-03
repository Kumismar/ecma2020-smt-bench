; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z0-9\-.'&]){2,128}$") ((_ re.from_regex ecma2020) "[\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}a-zA-Z -]+"))) (re.union (re.comp ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z0-9\-.'&]){2,128}$")) (re.comp ((_ re.from_regex ecma2020) "[\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}a-zA-Z -]+")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z0-9\-.'&]){2,128}$")) (re.comp ((_ re.from_regex ecma2020) "[\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}a-zA-Z -]+"))) (re.comp (re.inter ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z0-9\-.'&]){2,128}$") ((_ re.from_regex ecma2020) "[\u{430}-\u{44f}\u{451}\u{410}-\u{42f}\u{401}a-zA-Z -]+")))))))
(check-sat)
