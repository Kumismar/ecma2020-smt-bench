; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+)([ -]+([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+))+$") ((_ re.from_regex ecma2020 u) "[a-z|A-Z|0-9|!,.?]{6,15}")) ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+)([ -]+([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+))+$")) (re.diff ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+)([ -]+([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+))+$") (re.union ((_ re.from_regex ecma2020 u) "^([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+)([ -]+([\u{410}-\u{42f}][\u{430}-\u{44f}\u{451}]+|[A-Z][a-z]+))+$") ((_ re.from_regex ecma2020 u) "[a-z|A-Z|0-9|!,.?]{6,15}"))))))
(check-sat)
