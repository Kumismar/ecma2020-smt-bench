; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]([._](?![._])|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$") ((_ re.from_regex ecma2020) "^[u4e00-u9fa5]{1,7}$")) (re.inter ((_ re.from_regex ecma2020) "^[u4e00-u9fa5]{1,7}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9]([._](?![._])|[a-zA-Z0-9]){6,18}[a-zA-Z0-9]$")))))
(check-sat)
