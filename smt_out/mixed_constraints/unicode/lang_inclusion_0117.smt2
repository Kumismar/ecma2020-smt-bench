; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union (re.diff ((_ re.from_regex ecma2020 u) "^(27|267|266|264|268|260|263)[0-9]{9,15}") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]{3,}@[a-zA-Z.-]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})")) (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]{3,}@[a-zA-Z.-]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})"))) (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]{3,}@[a-zA-Z.-]{3,}([.]{1}[a-zA-Z]{2,}|[.]{1}[a-zA-Z]{2,}[.]{1}[a-zA-Z]{2,})"))))
(check-sat)
