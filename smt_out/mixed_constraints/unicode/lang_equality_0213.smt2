; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^[-a-zA-Z0-9@\.+_]+$") (re.union ((_ re.from_regex ecma2020 u) "^[-a-zA-Z0-9@\.+_]+$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)+[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$"))) ((_ re.from_regex ecma2020 u) "^[-a-zA-Z0-9@\.+_]+$"))))
(check-sat)
