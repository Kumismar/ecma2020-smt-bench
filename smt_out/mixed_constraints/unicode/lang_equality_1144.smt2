; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: full_match, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "[^\x21-\x2C\x2E\x2F\x3A-\x40\x5B-\x60\x7B-\x7E]*") ((_ re.from_regex ecma2020 u) "^(?:[^\x21-\x2C\x2E\x2F\x3A-\x40\x5B-\x60\x7B-\x7E]*)$"))))
(check-sat)
