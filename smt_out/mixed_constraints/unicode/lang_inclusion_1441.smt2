; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}0-9\s-]+") (re.union ((_ re.from_regex ecma2020 u) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}0-9\s-]+") ((_ re.from_regex ecma2020 u) "^([A-z\u{119}\u{f3}\u{105}\u{15b}\u{142}\u{17c}\u{17a}\u{107}\u{144}\u{118}\u{d3}\u{104}\u{15a}\u{141}\u{17b}\u{179}\u{106}\u{143} /]){2,}$"))) ((_ re.from_regex ecma2020 u) "[A-z\u{c4}\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}0-9\s-]+")))
(check-sat)
