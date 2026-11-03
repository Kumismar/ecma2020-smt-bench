; lang_inclusion, Unicode mode: is the language of a regex A included in the language of a regex B, both built from ECMAScript regexes: a string x in A and not in B, or an equation (re.inter A B) = A or (re.union A B) = B
; construction: or_literal, inclusion does not hold, encoding: memberships
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (str.in_re x ((_ re.from_regex ecma2020 u) "(?:^[\u{5c}u3041-\u{5c}u309F\u{5c}u30A1-\u{5c}u30FF]+$)|ascri")))
(assert (not (str.in_re x ((_ re.from_regex ecma2020 u) "^[\u{5c}u3041-\u{5c}u309F\u{5c}u30A1-\u{5c}u30FF]+$"))))
(check-sat)
