; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$")) (str.in_re x ((_ re.from_regex ecma2020 u) "CR|(?:^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$)")))))
(check-sat)
