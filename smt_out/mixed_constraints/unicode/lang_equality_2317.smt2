; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: or_literal, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020 u) "^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$") ((_ re.from_regex ecma2020 u) "(?:^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$)|<n")))
(check-sat)
