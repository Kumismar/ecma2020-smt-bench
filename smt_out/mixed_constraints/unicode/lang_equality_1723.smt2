; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_vs_operand, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "(^$)|(^[a-zA-Z0-9\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u00FF][-a-zA-Z0-9.'& \u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u00FF]{1,}$)") ((_ re.from_regex ecma2020 u) "^\S.{1,49}$")) ((_ re.from_regex ecma2020 u) "(^$)|(^[a-zA-Z0-9\u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u00FF][-a-zA-Z0-9.'& \u{5c}u00C0-\u{5c}u00D6\u{5c}u00D8-\u{5c}u00F6\u{5c}u00F8-\u{5c}u00FF]{1,}$)"))))
(check-sat)
