; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Z]{2,3}_[a-z]+:[0-9]{4}$") ((_ re.from_regex ecma2020) "(?!\s+)\D{1,19}\S")) ((_ re.from_regex ecma2020) "^[A-Z]{2,3}_[a-z]+:[0-9]{4}$")) (re.inter ((_ re.from_regex ecma2020) "^[A-Z]{2,3}_[a-z]+:[0-9]{4}$") ((_ re.from_regex ecma2020) "(?!\s+)\D{1,19}\S"))))
(check-sat)
