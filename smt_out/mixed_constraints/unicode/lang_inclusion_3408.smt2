; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b} ]*$") ((_ re.from_regex ecma2020 u) "^(0[0-9]|1[0-9]|2[0-3]):[0-5][0-9]$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b} ]*$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b} ]*$")))
(check-sat)
