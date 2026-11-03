; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^1(3|5|7|8)\d{9}") ((_ re.from_regex ecma2020) "8\\u{5c}u007|(?:^1(3|5|7|8)\d{9})")) ((_ re.from_regex ecma2020) "8\\u{5c}u007|(?:^1(3|5|7|8)\d{9})")))
(check-sat)
