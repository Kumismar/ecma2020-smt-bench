; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w]{2,6}$") ((_ re.from_regex ecma2020) "^([\w\.-]+@[\w\.-]+?\.[\w-]+\w)?$")) ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w]{2,6}$")) (re.diff ((_ re.from_regex ecma2020) "^[\w.-]+@[\w.-]+\.[\w]{2,6}$") ((_ re.from_regex ecma2020) "^([\w\.-]+@[\w\.-]+?\.[\w-]+\w)?$"))))
(check-sat)
