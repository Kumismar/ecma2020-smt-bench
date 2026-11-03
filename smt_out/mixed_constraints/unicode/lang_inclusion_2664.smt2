; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020 u) "^((8|\+3)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$") (re.union ((_ re.from_regex ecma2020 u) "^((8|\+3)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$") ((_ re.from_regex ecma2020 u) "[_A-Za-z0-9\u{621}-\u{64a}]{3,}$"))) (re.union ((_ re.from_regex ecma2020 u) "^((8|\+3)[\- ]?)?(\(?\d{3}\)?[\- ]?)?[\d\- ]{7,10}$") ((_ re.from_regex ecma2020 u) "[_A-Za-z0-9\u{621}-\u{64a}]{3,}$")))))
(check-sat)
