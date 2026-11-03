; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: followed_by_literal, inclusion holds, encoding: union_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.union ((_ re.from_regex ecma2020 u) "(?:^(https?:\/\/)?((?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61})?)?[A-Za-z0-9]\\.)*[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})?(\.[a-zA-Z]{2,})?\.[a-zA-Z]{2,}\/?(:[0-9]{1,5})?$) cont") ((_ re.from_regex ecma2020 u) "^(https?:\/\/)?((?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61})?)?[A-Za-z0-9]\\.)*[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})?(\.[a-zA-Z]{2,})?\.[a-zA-Z]{2,}\/?(:[0-9]{1,5})?$")) ((_ re.from_regex ecma2020 u) "^(https?:\/\/)?((?:[A-Za-z0-9](?:[A-Za-z0-9-]{0,61})?)?[A-Za-z0-9]\\.)*[a-zA-Z0-9]([a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(\.[a-zA-Z]{2,})?(\.[a-zA-Z]{2,})?\.[a-zA-Z]{2,}\/?(:[0-9]{1,5})?$")))
(check-sat)
