; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><aside onload=alert(1)></aside>") (= x "<IFRAME SRC=""javascript:javascript:alert(1);""></IFRAME>") (= x "ABC<div style=""x:\xE2\x80\x87expression(javascript:alert(1)"">DEF")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.,\s]*$") ((_ re.from_regex ecma2020 u) "^[0-9]{0,11}$")))))
(check-sat)
