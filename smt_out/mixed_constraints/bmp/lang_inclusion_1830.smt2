; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}]{4,20}$") (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}]{4,20}$") ((_ re.from_regex ecma2020) "^[a-zA-Z- ]*$"))) (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}]{4,20}$") ((_ re.from_regex ecma2020) "^[a-zA-Z- ]*$"))))
(check-sat)
