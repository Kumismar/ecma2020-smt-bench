; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<bdo onmouseenter=""alert(1)"">test</bdo>") (= x "<xss id=x tabindex=1 onactivate=alert(1)></xss>") (= x "<ol draggable=""true"" ondragenter=""alert(1)"">test</ol>")))
(assert (str.in_re x (re.diff (re.inter (re.++ (str.to_re "<ol ") re.all) (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[^\s]+(\s+[^\s]+)*$") (re.comp ((_ re.from_regex ecma2020 u) "(?=.*[a-z])(?=.*[A-Z])(?=.*\d).{6,15}"))))) (re.comp ((_ re.from_regex ecma2020 u) "^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$")))))
(check-sat)
