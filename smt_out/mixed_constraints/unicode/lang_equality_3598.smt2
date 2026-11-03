; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: union_absorbs_inter, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.union ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*") (re.inter ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*") ((_ re.from_regex ecma2020 u) "^(\((00|\+)39\)|(00|\+)39)?(32[04789]|38[890]|39[123]|34[024-9]|33[013-9]|36[0685]|35[0123]|37[0135789])(\s)?\d{6,7}$"))) ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*")) (re.diff ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*") (re.union ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*") (re.inter ((_ re.from_regex ecma2020 u) "^(?!info@|help@|sales@).*") ((_ re.from_regex ecma2020 u) "^(\((00|\+)39\)|(00|\+)39)?(32[04789]|38[890]|39[123]|34[024-9]|33[013-9]|36[0685]|35[0123]|37[0135789])(\s)?\d{6,7}$")))))))
(check-sat)
