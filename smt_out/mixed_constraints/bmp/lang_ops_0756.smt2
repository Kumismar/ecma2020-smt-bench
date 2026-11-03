; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "eval(a+b+c+d);") (= x "<SCRIPT onreadystatechange=javascript:javascript:alert(1);></SCRIPT>") (= x "ABC<div style=""x:\xE2\x80\x82expression(javascript:alert(1)"">DEF")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,3})$") ((_ re.from_regex ecma2020) "^.*(?<!gmail\.com|yahoo\.com|me\.com|hotmail\.com|outlook\.com)$"))))))
(check-sat)
