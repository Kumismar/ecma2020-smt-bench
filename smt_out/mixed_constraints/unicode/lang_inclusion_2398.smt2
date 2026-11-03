; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(.){6,}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\s]{3,30}$"))))
(assert (not (str.in_re x (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\s]{3,30}$")))))
(check-sat)
