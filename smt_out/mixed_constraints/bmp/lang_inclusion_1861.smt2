; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: union_in_operand, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9\u{413}\u{a7}\u{413}\u{b1}\u{413}\u{2021}\u{413}\u{2018}\u{412}\u{454}\u{412}\u{404}\u{413}\u{40e}\u{413}\u{a9}\u{413}\u{ad}\u{413}\u{456}\u{413}\u{454}\u{413}\u{a0}\u{413}\u{401}\u{413}\u{ac}\u{413}\u{406}\u{413}\u{2116}\u{413}\u{403}\u{413}\u{2030}\u{413}\u{40c}\u{413}\u{201c}\u{413}\u{459}\u{413}\u{402}\u{413}\u{20ac}\u{413}\u{40a}\u{413}\u{2019}\u{413}\u{2122}\u{413}\u{a4}\u{413}\u{ab}\u{413}\u{407}\u{413}\u{b6}\u{413}\u{458}\u{413}\u{201e}\u{413}\u{2039}\u{413}\u{40f}\u{413}\u{2013}\u{413}\u{45a} ]+")) ((_ re.from_regex ecma2020) "^([+]?\d{1,2}[-\s]?|)\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$"))))
(check-sat)
