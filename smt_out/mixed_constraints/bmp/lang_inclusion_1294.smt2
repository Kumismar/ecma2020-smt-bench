; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "onbe(?:(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$))") ((_ re.from_regex ecma2020) "(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$)")) ((_ re.from_regex ecma2020) "onbe(?:(^[aAbB][a-jA-J]\d{5}$|^[aAbB][a-jA-J]\d{5}\D{1}\d{1}$))")))
(check-sat)
