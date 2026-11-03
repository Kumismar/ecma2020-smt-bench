; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s]{3,}$") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s]{3,}$") ((_ re.from_regex ecma2020 u) "([\(]\d{3}[\)\s]{1,}\d{3}[\-]\d{4})|(\d{10})|(\d{3}[\s]\d{3}[\s]\d{4})|(\d{3}[\s]\d{3}[\-]\d{4})|(\d{3}[\s]\d{7})|([\(]\d{3}[\)\s]{1,}\d{3}[\s]\d{4})|([\(]\d{3}[\)\s]{1,}\d{7})|(\d{3}[\-]\d{3}[\-]\d{4})"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s]{3,}$"))))
(check-sat)
