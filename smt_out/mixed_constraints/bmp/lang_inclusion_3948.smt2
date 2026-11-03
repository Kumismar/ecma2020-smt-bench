; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_prefix, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!hotmail.co.il)(?!walla.co.il)(?!mail.ru)(?!outlook.com)(?!email.com)(?!icloud.com)(?!me.com)[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$") ((_ re.from_regex ecma2020) ".*(?:[a-zA-Z0-9._%+-]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!hotmail.co.il)(?!walla.co.il)(?!mail.ru)(?!outlook.com)(?!email.com)(?!icloud.com)(?!me.com)[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$)")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!hotmail.co.il)(?!walla.co.il)(?!mail.ru)(?!outlook.com)(?!email.com)(?!icloud.com)(?!me.com)[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")))
(check-sat)
