; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: full_match, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "^((0[13578]|1[02])[\/.]31[\/.](19|20)[0-9]{2})|((01|0[3-9]|1[0-2])[\/.](29|30)[\/.](19|20)[0-9]{2})|((0[1-9]|1[0-2])[\/.](0[1-9]|1[0-9]|2[0-8])[\/.](19|20)[0-9]{2})|((02)[\/.]29[\/.](((19|20)(04|08|[2468][048]|[13579][26]))|2000))*$")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^(?:^((0[13578]|1[02])[\/.]31[\/.](19|20)[0-9]{2})|((01|0[3-9]|1[0-2])[\/.](29|30)[\/.](19|20)[0-9]{2})|((0[1-9]|1[0-2])[\/.](0[1-9]|1[0-9]|2[0-8])[\/.](19|20)[0-9]{2})|((02)[\/.]29[\/.](((19|20)(04|08|[2468][048]|[13579][26]))|2000))*$)$"))))
(check-sat)
