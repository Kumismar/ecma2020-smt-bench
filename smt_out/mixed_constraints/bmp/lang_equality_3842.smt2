; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_absorbs_union, languages equal, encoding: disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.inter ((_ re.from_regex ecma2020) "^([7]{1})([5]{1})([6]{1})(.)([0-9]{4})(.)([0-9]{4})(.)([0-9]{2})$") (re.union ((_ re.from_regex ecma2020) "^([7]{1})([5]{1})([6]{1})(.)([0-9]{4})(.)([0-9]{4})(.)([0-9]{2})$") ((_ re.from_regex ecma2020) "^[a-zA-Z-\u{f1}\u{d1}\u{e1}\u{e9}\u{f3}\u{ed}\u{fa}\u{c1}\u{c9}\u{d3}\u{cd}\u{da} ]{1,60}$"))) ((_ re.from_regex ecma2020) "^([7]{1})([5]{1})([6]{1})(.)([0-9]{4})(.)([0-9]{4})(.)([0-9]{2})$"))))
(check-sat)
