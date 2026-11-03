; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "([0-9\+\/\(\)\-]{5,})*$") ((_ re.from_regex ecma2020 u) "^(IR|IG|IN|IP|IH|IM|ir|ig|in|ip|ih|im).+"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(IR|IG|IN|IP|IH|IM|ir|ig|in|ip|ih|im).+") ((_ re.from_regex ecma2020 u) "([0-9\+\/\(\)\-]{5,})*$"))))))
(check-sat)
