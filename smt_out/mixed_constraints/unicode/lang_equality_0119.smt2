; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "(?!(^[.-].*|.*[.-]@|.*\.{2,}.*)|^.{254}.+@)([a-z0-9!#$%&'*+\/=?^_`{|}~.-]+@)(?!.{253}.+$)((?!-.*|.*-\.)([a-z0-9-]{1,63}\.)+[a-z]{2,}|(([01]?[0-9]{2}|2([0-4][0-9]|5[0-5])|[0-9])\.){3}([01]?[0-9]{2}|2([0-4][0-9]|5[0-5])|[0-9]))") ((_ re.from_regex ecma2020 u) "^[-0-9]+$")))) (str.in_re x (re.union (re.comp ((_ re.from_regex ecma2020 u) "(?!(^[.-].*|.*[.-]@|.*\.{2,}.*)|^.{254}.+@)([a-z0-9!#$%&'*+\/=?^_`{|}~.-]+@)(?!.{253}.+$)((?!-.*|.*-\.)([a-z0-9-]{1,63}\.)+[a-z]{2,}|(([01]?[0-9]{2}|2([0-4][0-9]|5[0-5])|[0-9])\.){3}([01]?[0-9]{2}|2([0-4][0-9]|5[0-5])|[0-9]))")) (re.comp ((_ re.from_regex ecma2020 u) "^[-0-9]+$")))))))
(check-sat)
