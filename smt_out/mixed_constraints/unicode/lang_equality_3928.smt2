; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^[A-\u{17e}0-9-\u{201e}\u{201c},#+!&.?\u{2019}\u{2018}()' ]{10,}$)|ented")) (str.in_re x ((_ re.from_regex ecma2020 u) "^[A-\u{17e}0-9-\u{201e}\u{201c},#+!&.?\u{2019}\u{2018}()' ]{10,}$")))))
(check-sat)
