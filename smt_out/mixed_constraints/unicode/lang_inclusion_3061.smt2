; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: inter_in_operand, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{1}[A-Za-z0-9_.+-]*[A-Za-z0-9]{1}@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}") ((_ re.from_regex ecma2020 u) "^(?:\+?61|0)4(?:[01]\d{3}|(?:2[1-9]|3[0-57-9]|4[7-9]|5[0-15-9]|6[679]|7[3-8]|8[1478]|9[07-9])\d{2}|(?:20[2-9]|444|52[0-6]|68[3-9]|70[0-7]|79[01]|820|890|91[0-4])\d|(?:200[0-3]|201[01]|8984))\d{4}$")) ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{1}[A-Za-z0-9_.+-]*[A-Za-z0-9]{1}@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}"))))
(check-sat)
