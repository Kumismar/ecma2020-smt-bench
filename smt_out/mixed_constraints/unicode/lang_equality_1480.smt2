; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "^(?!\s*$)[a-zA-Z\s]{1,45}$") (re.inter ((_ re.from_regex ecma2020 u) "^(?!\s*$)[a-zA-Z\s]{1,45}$") ((_ re.from_regex ecma2020 u) "^(\+0?1\s)?\(?[2-9]{1}[0-9]{2}\)?[\s.-]?\d{3}[\s.-]?\d{4}$"))) ((_ re.from_regex ecma2020 u) "^(?!\s*$)[a-zA-Z\s]{1,45}$")))
(check-sat)
