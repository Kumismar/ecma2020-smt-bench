; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z]{2}[0-9]{2}[ ?][(A-Za-z0-9)( )?]{12,37}$") ((_ re.from_regex ecma2020 u) "nt=|(?:^[A-Za-z]{2}[0-9]{2}[ ?][(A-Za-z0-9)( )?]{12,37}$)")) ((_ re.from_regex ecma2020 u) "^[A-Za-z]{2}[0-9]{2}[ ?][(A-Za-z0-9)( )?]{12,37}$")))
(check-sat)
