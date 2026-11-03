; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,}$") ((_ re.from_regex ecma2020 u) "^[\u{5c}u4E00-\u{5c}u9FFF]+$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w{2,}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[\u{5c}u4E00-\u{5c}u9FFF]+$")))))
(check-sat)
