; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{5}[\s,\/]{1,3}[\u{e4}\u{f6}\u{fc}\u{df}\w]{2,40}$") ((_ re.from_regex ecma2020 u) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$"))) (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{5}[\s,\/]{1,3}[\u{e4}\u{f6}\u{fc}\u{df}\w]{2,40}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{5}[\s,\/]{1,3}[\u{e4}\u{f6}\u{fc}\u{df}\w]{2,40}$")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$"))) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{5}[\s,\/]{1,3}[\u{e4}\u{f6}\u{fc}\u{df}\w]{2,40}$") ((_ re.from_regex ecma2020 u) "^[0-9]{1,2}\.[0-1]{0,1}[0-9]{0,1}\.[0-9]{4}$")))))))
(check-sat)
