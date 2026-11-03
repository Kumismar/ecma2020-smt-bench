; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020 u) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9.#\u{b0} \u{5c}u00E0-\u{5c}u00FC\u{5c}u00d1\u{5c}u00f1]{5,200}")) (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z0-9.#\u{b0} \u{5c}u00E0-\u{5c}u00FC\u{5c}u00d1\u{5c}u00f1]{5,200}") ((_ re.from_regex ecma2020 u) "^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$"))))
(check-sat)
