; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "1\)"">te(?:^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}\-]{3,20}$)")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{105}\u{107}\u{106}\u{119}\u{142}\u{141}\u{144}\u{143}\u{f3}\u{d3}\u{15b}\u{15a}\u{17c}\u{17b}\u{17a}\u{179}\-]{3,20}$"))))
(check-sat)
