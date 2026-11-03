; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_comp, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z' \u{813f}\u{8292}\u{8305}\u{732b}\u{951a}\u{4e48}\u{9709}\u{6ca1}\u{83bd}\u{810c}\u{8117}\u{8121}\u{8120}\u{812d}\u{8135}\u{8139}\u{811f} -]+$") ((_ re.from_regex ecma2020 u) "ssn"))))
(assert (not (str.in_re x (re.comp ((_ re.from_regex ecma2020 u) "ssn")))))
(check-sat)
