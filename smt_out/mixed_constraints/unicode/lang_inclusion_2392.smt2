; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: literal_after_lookahead, inclusion holds, encoding: inter_equation
(set-logic QF_SLIA)
(set-info :status sat)
(assert (= (re.inter ((_ re.from_regex ecma2020 u) "(?=\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b)ert") ((_ re.from_regex ecma2020 u) "\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b")) ((_ re.from_regex ecma2020 u) "(?=\b[a-zA-Z0-9-_.]+@[a-zA-Z0-9-_]+\.?[a-zA-Z0-9a-zA-Z0-9-_]+?\.(com|us|org|me|net|info|edu)\b)ert")))
(check-sat)
