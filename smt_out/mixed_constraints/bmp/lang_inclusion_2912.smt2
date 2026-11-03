; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+([\-\.]{1,2}[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+)*\.[a-z]{2,20}(:[0-9]{1,5})?(\/.*)?$") ((_ re.from_regex ecma2020) "(?:^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+([\-\.]{1,2}[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+)*\.[a-z]{2,20}(:[0-9]{1,5})?(\/.*)?$)|ations")) ((_ re.from_regex ecma2020) "(?:^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+([\-\.]{1,2}[A-z\u{c3}\x80-\u{c3}\u{bf}0-9]+)*\.[a-z]{2,20}(:[0-9]{1,5})?(\/.*)?$)|ations"))))
(check-sat)
