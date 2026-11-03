; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[\w\-_&.,'`#@!\s]+$") ((_ re.from_regex ecma2020 u) "^((?!\.{2}\/|\.{2}\\|\.\/|\.\\|\.{2}).)*$"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[\w\-_&.,'`#@!\s]+$") ((_ re.from_regex ecma2020 u) "^((?!\.{2}\/|\.{2}\\|\.\/|\.\\|\.{2}).)*$"))))))
(check-sat)
