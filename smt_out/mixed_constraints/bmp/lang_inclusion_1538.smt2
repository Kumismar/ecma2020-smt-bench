; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "(?=^[a-zA-Z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}][0-9a-z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}A-Z-._\-]*$)test<\/") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}][0-9a-z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}A-Z-._\-]*$")) ((_ re.from_regex ecma2020) "^[a-zA-Z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}][0-9a-z\u{142}\u{15b}\u{17c}\u{f3}\u{105}\u{119}\u{144}\u{107}A-Z-._\-]*$"))))
(check-sat)
