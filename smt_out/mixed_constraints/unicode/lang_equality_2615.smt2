; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s\-']+$") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s\-']+$") ((_ re.from_regex ecma2020 u) "^(SM[0-9]{5}|(IS|CH)[0-9]{6}|(ATU|DK|FI|LU|MT|SI|HU)[0-9]{8}|(BE0|DE|EE|EL|GR|PT|\u{423}\u{41d}\u{41f}|IL|RS|UZ)[0-9]{9}|(PL|SK|TR|UA)[0-9]{10}|(AU|IT|LV|HR)[0-9]{11}|(SE|PH)[0-9]{12}|(CA|ID)[0-9]{15}|BG[0-9]{9,10}|CY[0-9]{8}L|CZ[0-9]{8,10}|ES[0-9A-Z][0-9]{7}[0-9A-Z]|FR[0-9A-Z]{2}[0-9]{9}|GB([0-9]{9}([0-9]{3})?|[A-Z]{2}[0-9]{3})|IE[0-9]S[0-9]{5}L|LT([0-9]{9,12}|[0-9]{12})|NL[0-9]{9}B[0-9]{2}|RO[0-9]{2,10}|(ALK|ALJ)[0-9]{8}L|IN[0-9]{11}(V|C)|NO[0-9]{9}MVA|RU[0-9]{10,12}|CHE[0-9]{9}(TVA|MWST|IVA))$"))) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\s\-']+$")))
(check-sat)
