; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<FRAMESET><FRAME SRC=\""javascript:alert('XSS');\""></FRAMESET>") (= x "<marquee><script>alert('XSS')</script></marquee>") (= x "<frame onmouseleave=""alert(1)"">test</frame>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,3})$") (re.comp (re.inter (re.++ re.all (str.to_re "e>")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9\-_.]{2,32}$"))))))
(check-sat)
