; lang_inclusion, BMP mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: preceded_by_literal, inclusion does not hold, encoding: diff
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "\s*[a-zA-Z0-9-_]{6,16}$") ((_ re.from_regex ecma2020) "\/table(?:\s*[a-zA-Z0-9-_]{6,16}$)"))))
(check-sat)
