; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[-A-Za-z0-9&#39;,.!()@ -]{1,32}$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{e9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{c9}'\s]+$")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020) "^[-A-Za-z0-9&#39;,.!()@ -]{1,32}$")) (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e0}\u{e8}\u{ec}\u{f2}\u{f9}\u{e9}\u{c0}\u{c8}\u{cc}\u{d2}\u{d9}\u{c9}'\s]+$")))))))
(check-sat)
