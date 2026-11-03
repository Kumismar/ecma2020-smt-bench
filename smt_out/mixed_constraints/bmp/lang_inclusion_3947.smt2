; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^((1[3,5,8][0-9])|(14[0-9])|(17[0-9])|(19[7]))\d{8}$") (re.union ((_ re.from_regex ecma2020) "^((1[3,5,8][0-9])|(14[0-9])|(17[0-9])|(19[7]))\d{8}$") ((_ re.from_regex ecma2020) "^[0+]{1}[0-9 ]{6,15}"))) (re.union ((_ re.from_regex ecma2020) "^((1[3,5,8][0-9])|(14[0-9])|(17[0-9])|(19[7]))\d{8}$") ((_ re.from_regex ecma2020) "^[0+]{1}[0-9 ]{6,15}"))))
(check-sat)
