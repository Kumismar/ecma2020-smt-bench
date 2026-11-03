; lang_equality, BMP mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: swapped_diff, languages differ, encoding: equation
(set-logic QF_SLIA)
(set-info :status unsat)
(assert (= (re.diff ((_ re.from_regex ecma2020) "(^(1300|1800|1900|1902)(|)[0-9]{3}(|)[0-9]{3}$)|(((^[\+]*61[2|3|4|7|8]{1})|^0[2|3|7|8]{1})(|)[0-9]{4}(|)[0-9]{4}$)|(^014(|)([0-9]{5}|[0-9]{6}|[0-9]{7})$)|(^13(|)[0-9]{4}$)|(^04[0-9]{2}(|)[0-9]{3}(|)[0-9]{3}$)") ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d).{8,}$")) (re.diff ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d).{8,}$") ((_ re.from_regex ecma2020) "(^(1300|1800|1900|1902)(|)[0-9]{3}(|)[0-9]{3}$)|(((^[\+]*61[2|3|4|7|8]{1})|^0[2|3|7|8]{1})(|)[0-9]{4}(|)[0-9]{4}$)|(^014(|)([0-9]{5}|[0-9]{6}|[0-9]{7})$)|(^13(|)[0-9]{4}$)|(^04[0-9]{2}(|)[0-9]{3}(|)[0-9]{3}$)"))))
(check-sat)
