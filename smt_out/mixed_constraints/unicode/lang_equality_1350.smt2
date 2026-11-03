; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_inter, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "[0-9+]*$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u30A1-\u{5c}u30FC])[\u{5c}u30A1-\u{5c}u30FC\s]*")) (re.inter ((_ re.from_regex ecma2020 u) "[0-9+]*$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u30A1-\u{5c}u30FC])[\u{5c}u30A1-\u{5c}u30FC\s]*"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "[0-9+]*$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u30A1-\u{5c}u30FC])[\u{5c}u30A1-\u{5c}u30FC\s]*")) (re.union ((_ re.from_regex ecma2020 u) "[0-9+]*$") ((_ re.from_regex ecma2020 u) "(?=.*?[\u{5c}u30A1-\u{5c}u30FC])[\u{5c}u30A1-\u{5c}u30FC\s]*"))))))
(check-sat)
