; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: unrelated, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020 u) "^(?:\+?\d+\s*)?\(?\d{3}\)?[\s\.-]?\d{3}[\s\.-]?\d{4}$") ((_ re.from_regex ecma2020 u) "(^[A-Z]{6}[0-9]{2}[A-Z][0-9]{2}[A-Z][0-9]{3}[A-Z])|(^.{4,11})"))))
(check-sat)
