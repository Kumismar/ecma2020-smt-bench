; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: inter_commutes, languages equal, encoding: symmetric_difference
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.union (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$") ((_ re.from_regex ecma2020 u) "[a-z0-9]{5,}$")) (re.inter ((_ re.from_regex ecma2020 u) "[a-z0-9]{5,}$") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$"))) (re.diff (re.inter ((_ re.from_regex ecma2020 u) "[a-z0-9]{5,}$") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$")) (re.inter ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$") ((_ re.from_regex ecma2020 u) "[a-z0-9]{5,}$"))))))
(check-sat)
