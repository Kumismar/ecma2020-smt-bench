; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: optional_literal, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020) "^[ ]*[0-9\(][ 0-9-\(\)]{7,}[0-9\)][ ]*$") ((_ re.from_regex ecma2020) "(?:^[ ]*[0-9\(][ 0-9-\(\)]{7,}[0-9\)][ ]*$)(?:sc)?")))
(check-sat)
