; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: disequation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (not (= ((_ re.from_regex ecma2020) "ble=""t|(?:(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4})") ((_ re.from_regex ecma2020) "(0[1-9]|1[0-2])\/(0[1-9]|[12][0-9]|3[01])\/\d{4}"))))
(check-sat)
