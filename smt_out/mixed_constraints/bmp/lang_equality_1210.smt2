; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: literal_or, languages differ, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020) "^([\u{5c}u4e00-\u{5c}u9fa5]+|[\u{5c}u4e00-\u{5c}u9fa5a-zA-Z_0-9]+|[,.\u{ff0c}\u{3002}\u{ff1b}\u{201c}\u{201d};])$")) (str.in_re x ((_ re.from_regex ecma2020) "y id=x|(?:^([\u{5c}u4e00-\u{5c}u9fa5]+|[\u{5c}u4e00-\u{5c}u9fa5a-zA-Z_0-9]+|[,.\u{ff0c}\u{3002}\u{ff1b}\u{201c}\u{201d};])$)")))))
(check-sat)
