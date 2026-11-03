; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: diff
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "\s*[0-9- ]{9,}$") ((_ re.from_regex ecma2020) "^(\(?\+?[0-9]*\)?)?[0-9_\- \(\)]*$")) ((_ re.from_regex ecma2020) "\s*[0-9- ]{9,}$"))))
(check-sat)
