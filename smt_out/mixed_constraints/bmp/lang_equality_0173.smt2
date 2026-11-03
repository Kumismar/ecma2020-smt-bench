; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9._+-]*@[a-zA-Z0-9._+-]+\.[a-z]{2,4}$") ((_ re.from_regex ecma2020) "\b\d{3}\.\d{3}\.\d{3}-\d{2}\b|\b(\d{11})\b|\b[a-z]{5}-ldpa[0-9]{1}\b|\b[a-z]{5}\b-[a-z]{6}\b"))) (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\b\d{3}\.\d{3}\.\d{3}-\d{2}\b|\b(\d{11})\b|\b[a-z]{5}-ldpa[0-9]{1}\b|\b[a-z]{5}\b-[a-z]{6}\b") ((_ re.from_regex ecma2020) "[a-zA-Z0-9._+-]*@[a-zA-Z0-9._+-]+\.[a-z]{2,4}$"))))))
(check-sat)
