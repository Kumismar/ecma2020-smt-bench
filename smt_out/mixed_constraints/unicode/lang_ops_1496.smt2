; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;IMG SRC="";javascript:alert(';XSS';)"";") (= x "<mark id=x tabindex=1 onactivate=alert(1)></mark>") (= x "<rb onbeforecopy=""alert(1)"" contenteditable>test</rb>")))
(assert (not (str.in_re x (re.comp (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+.[a-zA-Z0-9-.]+$") (re.comp (re.++ re.all (str.to_re "rk>")))) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^(([a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,10}[\s]{1}[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,20})|([a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,32}))$") (re.comp ((_ re.from_regex ecma2020 u) "^[\w\-\.]{5,25}$")))))))))
(check-sat)
