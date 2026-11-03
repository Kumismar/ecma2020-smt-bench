; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<img id=x tabindex=1 onbeforedeactivate=alert(1)></img><input autofocus>") (= x "<ins draggable=""true"" ondragleave=""alert(1)"">test</ins>") (= x "<link onreadystatechange=alert(1) rel=stylesheet href=1>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da} ]+$") (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$")))))))
(check-sat)
