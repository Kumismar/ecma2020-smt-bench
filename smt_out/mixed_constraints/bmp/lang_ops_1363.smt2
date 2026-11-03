; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<img/src=`%00` onerror=this.onerror=confirm(1)") (= x "<aside ondblclick=""alert(1)"">test</aside>") (= x "<!--")))
(assert (str.in_re x (re.inter (re.diff (re.++ re.all (str.to_re "de>")) ((_ re.from_regex ecma2020) "[a-zA-Z@.-_]*")) (re.comp ((_ re.from_regex ecma2020) "^(\+*(?:[0-9\s.\-\(\)] ?){4,15}[0-9])(?:(\s*){1}(?:[x])(\s*){1}(?:[0-9]){1,7}?)?$")))))
(check-sat)
