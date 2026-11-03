; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.diff ((_ re.from_regex ecma2020 u) "[\w-]{3,30}") ((_ re.from_regex ecma2020 u) "^DE(?:\s*[0-9a-zA-Z]\s*){20}$")) (re.diff ((_ re.from_regex ecma2020 u) "^DE(?:\s*[0-9a-zA-Z]\s*){20}$") ((_ re.from_regex ecma2020 u) "[\w-]{3,30}"))) (re.diff (re.diff ((_ re.from_regex ecma2020 u) "^DE(?:\s*[0-9a-zA-Z]\s*){20}$") ((_ re.from_regex ecma2020 u) "[\w-]{3,30}")) (re.diff ((_ re.from_regex ecma2020 u) "[\w-]{3,30}") ((_ re.from_regex ecma2020 u) "^DE(?:\s*[0-9a-zA-Z]\s*){20}$"))))))
(check-sat)
