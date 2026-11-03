; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: any_suffix, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$") ((_ re.from_regex ecma2020 u) "(?:^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$).*")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._-]+([a-zA-Z0-9])_?@(([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3})|(([a-zA-Z\-0-9]+\.){1,4}[a-zA-Z]{2,}))$")))
(check-sat)
