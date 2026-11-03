; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= ((_ re.from_regex ecma2020 u) "(?:[^()/\\\x40\\\x21\\\x26\\\x24\\\x25\\\x3C\\\x3E\.\][\\\x22,;|]+)+") ((_ re.from_regex ecma2020 u) "[^()/\\\x40\\\x21\\\x26\\\x24\\\x25\\\x3C\\\x3E\.\][\\\x22,;|]+"))))
(check-sat)
