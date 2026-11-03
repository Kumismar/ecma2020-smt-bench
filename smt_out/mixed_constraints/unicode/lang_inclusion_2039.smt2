; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^[-\w]+@(?:[\w]{2,})(?:\.[\w]{2,})?(?:\.[a-zA-Z]{2,6})$") ((_ re.from_regex ecma2020 u) "(^((?!-)[a-zA-Z0-9\-\u{105}\u{10d}\u{119}\u{117}\u{12f}\u{161}\u{173}\u{16b}\u{17e}\u{104}\u{10c}\u{118}\u{116}\u{12e}\u{160}\u{172}\u{16a}\u{17d}]{1,63}(?<!-)\.)+[A-Za-z]{2,4}$)")) (re.comp ((_ re.from_regex ecma2020 u) "(^((?!-)[a-zA-Z0-9\-\u{105}\u{10d}\u{119}\u{117}\u{12f}\u{161}\u{173}\u{16b}\u{17e}\u{104}\u{10c}\u{118}\u{116}\u{12e}\u{160}\u{172}\u{16a}\u{17d}]{1,63}(?<!-)\.)+[A-Za-z]{2,4}$)")))))
(check-sat)
