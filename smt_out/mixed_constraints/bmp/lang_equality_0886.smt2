; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9\u{e4}\u{f6}\u{fc}\u{df}\u{c4}\u{d6}\u{dc}]*") ((_ re.from_regex ecma2020) "(^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?\d{3}-?\d{4}$)?")))) (str.in_re x (re.inter (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9\u{e4}\u{f6}\u{fc}\u{df}\u{c4}\u{d6}\u{dc}]*")) (re.comp ((_ re.from_regex ecma2020) "(^(1-?)?(\([2-9]\d{2}\)|[2-9]\d{2})-?\d{3}-?\d{4}$)?")))))))
(check-sat)
