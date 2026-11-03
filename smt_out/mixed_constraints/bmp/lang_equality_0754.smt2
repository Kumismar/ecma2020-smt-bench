; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: diff_is_inter_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "[A-Za-z0-9\._]+@[A-Za-z]+\.com") ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{1,40}(\/[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{0,40})?$")) (re.inter ((_ re.from_regex ecma2020) "[A-Za-z0-9\._]+@[A-Za-z]+\.com") (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{1,40}(\/[A-Za-z\u{5c}u4e00-\u{5c}u9eff]{0,40})?$")))))
(check-sat)
