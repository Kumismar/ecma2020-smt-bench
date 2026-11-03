; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: double_comp, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.comp ((_ re.from_regex ecma2020 u) "^[\w](?!.*?\.{2})[\w.]{1,28}[\w]$"))) ((_ re.from_regex ecma2020 u) "^[\w](?!.*?\.{2})[\w.]{1,28}[\w]$")))
(check-sat)
