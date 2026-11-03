; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^\s*?\d{5}(?:[-\s]\d{4})?\s*?$") (re.inter ((_ re.from_regex ecma2020) "^\s*?\d{5}(?:[-\s]\d{4})?\s*?$") ((_ re.from_regex ecma2020) "^([0-9a-zA-Z]+[-_+.&0-9a-zA-Z]*)?[-_+0-9a-zA-Z]+@([-0-9a-zA-Z]+[.])+[a-zA-Z]{2,6}$"))) ((_ re.from_regex ecma2020) "^\s*?\d{5}(?:[-\s]\d{4})?\s*?$")))
(check-sat)
