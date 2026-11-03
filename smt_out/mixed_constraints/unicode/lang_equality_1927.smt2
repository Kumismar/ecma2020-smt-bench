; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "nted|(?:([a-zA-Z0-9\s_\\.\-:])+(.jpg|.pdf|.doc|.docx)$)") ((_ re.from_regex ecma2020 u) "([a-zA-Z0-9\s_\\.\-:])+(.jpg|.pdf|.doc|.docx)$")))
(check-sat)
