; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[\w\-]+$") (re.union ((_ re.from_regex ecma2020) "^[\w\-]+$") ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$"))) (re.union ((_ re.from_regex ecma2020) "^[\w\-]+$") ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$"))))
(check-sat)
