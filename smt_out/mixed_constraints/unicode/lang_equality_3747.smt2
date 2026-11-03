; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: de_morgan_union, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.comp (re.union ((_ re.from_regex ecma2020 u) "^202[1-9]$") ((_ re.from_regex ecma2020 u) "^([\w.-]+)@(\[(\d{1,3}\.){3}|(?!live\.fr|mail\.ru|hotmail\.fr|arcor\.de|inbox\.ru|yams08|eric\.jones|abdulah\.xyz)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$"))) (re.inter (re.comp ((_ re.from_regex ecma2020 u) "^202[1-9]$")) (re.comp ((_ re.from_regex ecma2020 u) "^([\w.-]+)@(\[(\d{1,3}\.){3}|(?!live\.fr|mail\.ru|hotmail\.fr|arcor\.de|inbox\.ru|yams08|eric\.jones|abdulah\.xyz)(([a-zA-Z\d-]+\.)+))([a-zA-Z]{2,4}|\d{1,3})(\]?)$")))))
(check-sat)
