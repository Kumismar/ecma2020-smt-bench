; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}0-9.,\s]+){0,500}$") ((_ re.from_regex ecma2020) "^[_A-z ' ']{1,}$"))) (re.inter (re.comp ((_ re.from_regex ecma2020) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}0-9.,\s]+){0,500}$")) (re.comp ((_ re.from_regex ecma2020) "^[_A-z ' ']{1,}$")))))
(check-sat)
