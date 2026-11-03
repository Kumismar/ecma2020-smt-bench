; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|") ((_ re.from_regex ecma2020) "[0-9]{2}[/][0-9]{2}")) (re.inter ((_ re.from_regex ecma2020) "[0-9]{2}[/][0-9]{2}") ((_ re.from_regex ecma2020) "|^[a-zA-Z \u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{fc}\u{e7}]*$|"))))
(check-sat)
