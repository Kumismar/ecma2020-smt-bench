; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(^((?!-)[a-zA-Z0-9\-\u{105}\u{10d}\u{119}\u{117}\u{12f}\u{161}\u{173}\u{16b}\u{17e}\u{104}\u{10c}\u{118}\u{116}\u{12e}\u{160}\u{172}\u{16a}\u{17d}]{1,63}(?<!-)\.)+[A-Za-z]{2,4}$)") ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}\s\-\.]{1,30}"))) (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "(?!^\s+$)[A-z\u{c0}-\u{17e}\s\-\.]{1,30}") ((_ re.from_regex ecma2020 u) "(^((?!-)[a-zA-Z0-9\-\u{105}\u{10d}\u{119}\u{117}\u{12f}\u{161}\u{173}\u{16b}\u{17e}\u{104}\u{10c}\u{118}\u{116}\u{12e}\u{160}\u{172}\u{16a}\u{17d}]{1,63}(?<!-)\.)+[A-Za-z]{2,4}$)"))))))
(check-sat)
