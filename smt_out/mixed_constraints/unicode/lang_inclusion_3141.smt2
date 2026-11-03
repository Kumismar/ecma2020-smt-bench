; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^AT\d{3,7}|AI\d{3,7}$") (re.union ((_ re.from_regex ecma2020 u) "^AT\d{3,7}|AI\d{3,7}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z\u{105}\u{104}\u{107}\u{107}\u{119}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{179}\u{179} ]+"))) ((_ re.from_regex ecma2020 u) "^AT\d{3,7}|AI\d{3,7}$")))
(check-sat)
