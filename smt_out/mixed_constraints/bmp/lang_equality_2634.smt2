; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.comp (re.inter ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$") ((_ re.from_regex ecma2020) "^[a-\u{17e}A-\u{17d} '-]+$"))) (re.union (re.comp ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$")) (re.comp ((_ re.from_regex ecma2020) "^[a-\u{17e}A-\u{17d} '-]+$")))) (re.diff (re.union (re.comp ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$")) (re.comp ((_ re.from_regex ecma2020) "^[a-\u{17e}A-\u{17d} '-]+$"))) (re.comp (re.inter ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$") ((_ re.from_regex ecma2020) "^[a-\u{17e}A-\u{17d} '-]+$")))))))
(check-sat)
