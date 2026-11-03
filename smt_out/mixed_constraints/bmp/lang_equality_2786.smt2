; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= ((_ re.from_regex ecma2020) "^[A-Za-z\u{e4}\u{f6}\u{fc} .'-]+$") ((_ re.from_regex ecma2020) "t\(1\)\u{1f600}|(?:^[A-Za-z\u{e4}\u{f6}\u{fc} .'-]+$)")))
(check-sat)
