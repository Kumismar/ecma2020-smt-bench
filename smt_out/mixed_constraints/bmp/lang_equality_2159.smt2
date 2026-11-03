; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020) "^[^\s]+[-a-zA-Z\s]+([-a-zA-Z]+)*$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\- ]{1,41}$")) (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\- ]{1,41}$") ((_ re.from_regex ecma2020) "^[^\s]+[-a-zA-Z\s]+([-a-zA-Z]+)*$"))) (re.diff (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\- ]{1,41}$") ((_ re.from_regex ecma2020) "^[^\s]+[-a-zA-Z\s]+([-a-zA-Z]+)*$")) (re.inter ((_ re.from_regex ecma2020) "^[^\s]+[-a-zA-Z\s]+([-a-zA-Z]+)*$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{105}\u{107}\u{119}\u{142}\u{144}\u{f3}\u{15b}\u{17a}\u{17c}\u{104}\u{106}\u{118}\u{141}\u{143}\u{d3}\u{15a}\u{179}\u{17b}\- ]{1,41}$"))))))
(check-sat)
