; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_or, inclusion holds, encoding: memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020) "[x-zX-Z]{0,1}[0-9]{1,8}[a-zA-Z]{1,}")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020) "\u{1f600}t|(?:[x-zX-Z]{0,1}[0-9]{1,8}[a-zA-Z]{1,})"))))
(check-sat)
