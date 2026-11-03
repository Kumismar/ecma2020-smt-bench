; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9]{2}") ((_ re.from_regex ecma2020) "[_a-z0-9-]+(.[_a-z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)(.[a-z]{2,4})"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^[0-9]{2}")) (re.comp ((_ re.from_regex ecma2020) "[_a-z0-9-]+(.[_a-z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)(.[a-z]{2,4})")))) (re.diff (re.inter (re.comp ((_ re.from_regex ecma2020) "^[0-9]{2}")) (re.comp ((_ re.from_regex ecma2020) "[_a-z0-9-]+(.[_a-z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)(.[a-z]{2,4})"))) (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9]{2}") ((_ re.from_regex ecma2020) "[_a-z0-9-]+(.[_a-z0-9-]+)@[a-z0-9-]+(.[a-z0-9-]+)(.[a-z]{2,4})")))))))
(check-sat)
