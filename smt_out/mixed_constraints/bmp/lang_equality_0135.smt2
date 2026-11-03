; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5_\u{5c}u3002\u{5c}uff1b\u{5c}uff0c\u{5c}uff1a\u{5c}u201c\u{5c}u201d\u{5c}uff08\u{5c}uff09\u{5c}u3001\u{5c}uff1f\u{5c}u300a\u{5c}u300b_a-zA-Z0-9_]+$") (re.inter ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5_\u{5c}u3002\u{5c}uff1b\u{5c}uff0c\u{5c}uff1a\u{5c}u201c\u{5c}u201d\u{5c}uff08\u{5c}uff09\u{5c}u3001\u{5c}uff1f\u{5c}u300a\u{5c}u300b_a-zA-Z0-9_]+$") ((_ re.from_regex ecma2020) "^[UXux0-9]{9,9}"))) ((_ re.from_regex ecma2020) "^[\u{5c}u4e00-\u{5c}u9fa5_\u{5c}u3002\u{5c}uff1b\u{5c}uff0c\u{5c}uff1a\u{5c}u201c\u{5c}u201d\u{5c}uff08\u{5c}uff09\u{5c}u3001\u{5c}uff1f\u{5c}u300a\u{5c}u300b_a-zA-Z0-9_]+$")))
(check-sat)
