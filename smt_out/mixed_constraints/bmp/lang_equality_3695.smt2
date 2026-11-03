; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$") ((_ re.from_regex ecma2020) "(?:^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$)(?:""ale)?")) (re.diff ((_ re.from_regex ecma2020) "(?:^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$)(?:""ale)?") ((_ re.from_regex ecma2020) "^[A-Z]{2}[!@#\$%\^&\*\?\u{bf}\u{aa}\u{ba}\u{a1}_~\/]{1}[0-9]{4}$")))))
(check-sat)
