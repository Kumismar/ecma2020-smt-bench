; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b oncopy=""alert(1)"" contenteditable>test</b>") (= x "<IMG SRC=jAVasCrIPt:alert(\u{2018}XSS\u{2019})>") (= x "<script>alert(1)</script\u{10348}>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[0-9_]{7,15}$") ((_ re.from_regex ecma2020) "^([^.@]+)(\.[^.@]+)*@([^.@]+\.)+([^.@]+)$")) (re.++ re.all (str.to_re ">")))))
(check-sat)
