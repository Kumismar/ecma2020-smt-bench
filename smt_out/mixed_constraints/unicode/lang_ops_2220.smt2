; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<body\u{10348} ONLOAD=document.vulnerable=true;>") (= x "<style>:target {color: red;}</style><link id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></link>") (= x "ABC<div style=""x:\xE2\x80\x85expression(javascript:alert(1)"">DEF")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[0-9]{8,10}$") (re.comp ((_ re.from_regex ecma2020 u) "^[-A-Za-z. ]{3,100}$"))))))
(check-sat)
