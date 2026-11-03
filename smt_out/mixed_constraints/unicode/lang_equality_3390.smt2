; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$") (re.union ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$") ((_ re.from_regex ecma2020 u) "^(1\s*[-\/\.]?)?(\((\d{3})\)|(\d{3}))\s*[-\/\.]?\s*(\d{3})\s*[-\/\.]?\s*(\d{4})\s*(([xX]|[eE][xX][tT])\.?\s*(\d+))*$"))) ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$") (re.inter ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$") (re.union ((_ re.from_regex ecma2020 u) "^[A-Z][a-z]* [A-Z][a-z]*$") ((_ re.from_regex ecma2020 u) "^(1\s*[-\/\.]?)?(\((\d{3})\)|(\d{3}))\s*[-\/\.]?\s*(\d{3})\s*[-\/\.]?\s*(\d{4})\s*(([xX]|[eE][xX][tT])\.?\s*(\d+))*$")))))))
(check-sat)
