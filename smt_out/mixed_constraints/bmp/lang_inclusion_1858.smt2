; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: operand_in_union, inclusion holds, encoding: union_disequation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (not (= (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+(?: +[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+)*$") (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+(?: +[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+)*$") ((_ re.from_regex ecma2020) "^[^<>()!%_+$&]*$"))) (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+(?: +[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+)*$") ((_ re.from_regex ecma2020) "^[^<>()!%_+$&]*$")))))
(check-sat)
