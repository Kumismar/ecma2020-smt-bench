; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "(?:^([A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+[,.]?[ ]?|[A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+['-]?)+)|aler")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "^([A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+[,.]?[ ]?|[A-Z\u{104}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}a-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}]+['-]?)+"))))
(check-sat)
