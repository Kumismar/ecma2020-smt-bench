; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$") ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$")) (re.union ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$") ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$"))) (re.diff (re.union ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$") ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$")) (re.union ((_ re.from_regex ecma2020) "^\d{1,3}(,\d{3})*(\.\d+|)?$") ((_ re.from_regex ecma2020) "(|.+)([\u{665}][\u{660}-\u{669}]{8}|[5]([0-9](| |-|_)+){8})(| )+$"))))))
(check-sat)
