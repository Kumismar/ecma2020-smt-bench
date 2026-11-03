; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: repeated, languages equal, encoding: equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= ((_ re.from_regex ecma2020 u) "^.+@((?!hotmail)(?!gmail)(?!ymail)(?!googlemail)(?!live)(?!gmx)(?!yahoo)(?!outlook)(?!msn)(?!icloud)(?!facebook)(?!aol)(?!zoho)(?!mail)(?!yandex)(?!hushmail)(?!lycox)(?!lycosmail)(?!inbox)(?!myway)(?!aim)(?!fastmail)(?!goowy)(?!juno)(?!shortmail)(?!atmail)(?!protonmail).)+\..+$") ((_ re.from_regex ecma2020 u) "(?:^.+@((?!hotmail)(?!gmail)(?!ymail)(?!googlemail)(?!live)(?!gmx)(?!yahoo)(?!outlook)(?!msn)(?!icloud)(?!facebook)(?!aol)(?!zoho)(?!mail)(?!yandex)(?!hushmail)(?!lycox)(?!lycosmail)(?!inbox)(?!myway)(?!aim)(?!fastmail)(?!goowy)(?!juno)(?!shortmail)(?!atmail)(?!protonmail).)+\..+$)+")))
(check-sat)
