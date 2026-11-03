; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<output onkeydown=""alert(1)"" contenteditable>test</output>") (= x "<ul id=x tabindex=1 ondeactivate=alert(1)>\u{10348}</ul><input id=y autofocus>") (= x "<body onLoad=""while(true) alert('XSS');"">")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-z0-9._%+-]+@[a-zA-z0-9.-]+\.[a-zA-z]{2,4}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9.\-_]+([@]{1})[A-Za-z0-9.\-_]+([.]{1})[A-Za-z0-9]+"))))
(check-sat)
