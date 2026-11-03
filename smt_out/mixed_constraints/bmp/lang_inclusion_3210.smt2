; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})") (re.union ((_ re.from_regex ecma2020) "\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})") ((_ re.from_regex ecma2020) "[1-9][0-9]{2,5}"))) (re.union ((_ re.from_regex ecma2020) "\(?([0-9]{3})\)?([ .-]?)([0-9]{3})\2([0-9]{4})") ((_ re.from_regex ecma2020) "[1-9][0-9]{2,5}")))))
(check-sat)
