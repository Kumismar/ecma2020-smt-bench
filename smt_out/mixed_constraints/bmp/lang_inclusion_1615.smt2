; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion does not hold, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "t<\/tim|(?:^[a-zA-Z][a-zA-Z\u{139}\u{17a}\u{102}\u{13d}\u{102}\u{b6}\u{c4}\u{b1}\u{c4}\u{17a}\u{102}\u{a7}\u{139}\u{17e}\u{102}\u{15b}\u{102}\u{2013}\u{c4}\u{b0}\u{c4}\u{17e}\u{102}\u{2021}0-9-_\.]{1,15}$)") ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z\u{139}\u{17a}\u{102}\u{13d}\u{102}\u{b6}\u{c4}\u{b1}\u{c4}\u{17a}\u{102}\u{a7}\u{139}\u{17e}\u{102}\u{15b}\u{102}\u{2013}\u{c4}\u{b0}\u{c4}\u{17e}\u{102}\u{2021}0-9-_\.]{1,15}$")) ((_ re.from_regex ecma2020) "t<\/tim|(?:^[a-zA-Z][a-zA-Z\u{139}\u{17a}\u{102}\u{13d}\u{102}\u{b6}\u{c4}\u{b1}\u{c4}\u{17a}\u{102}\u{a7}\u{139}\u{17e}\u{102}\u{15b}\u{102}\u{2013}\u{c4}\u{b0}\u{c4}\u{17e}\u{102}\u{2021}0-9-_\.]{1,15}$)")))
(check-sat)
