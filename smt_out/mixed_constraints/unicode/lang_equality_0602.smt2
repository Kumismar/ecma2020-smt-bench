; lang_equality, Unicode mode: are the languages of two regexes A and B built from ECMAScript regexes equal: an equation A = B, its negation, or a string x in exactly one of them
; construction: any_prefix, languages equal, encoding: different_memberships
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (not (= (str.in_re x ((_ re.from_regex ecma2020 u) ".*(?:(([+][(]?[0-9]{1,3}[)]?)|([(]?[0-9]{4}[)]?))?\s*[)]?[-\s\.]?[(]?[0-9]{1,3}[)]?([-\s\.]?[0-9]{3})([-\s\.]?[0-9]{3,4}))")) (str.in_re x ((_ re.from_regex ecma2020 u) "(([+][(]?[0-9]{1,3}[)]?)|([(]?[0-9]{4}[)]?))?\s*[)]?[-\s\.]?[(]?[0-9]{1,3}[)]?([-\s\.]?[0-9]{3})([-\s\.]?[0-9]{3,4})")))))
(check-sat)
