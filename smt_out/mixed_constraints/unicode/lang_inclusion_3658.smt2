; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: diff_in_operand, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[A-z]?\d{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$") ((_ re.from_regex ecma2020 u) "^(?:\s*)[\w.%+-]+@[\w.-]+\.(?!(con)\b)\b\w{2,6}(?:\s*)$")) ((_ re.from_regex ecma2020 u) "^[A-z]?\d{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$")) (re.diff ((_ re.from_regex ecma2020 u) "^[A-z]?\d{7,8}[TRWAGMYFPDXBNJZSQVHLCKEtrwagmyfpdxbnjzsqvhlcke]$") ((_ re.from_regex ecma2020 u) "^(?:\s*)[\w.%+-]+@[\w.-]+\.(?!(con)\b)\b\w{2,6}(?:\s*)$"))))
(check-sat)
