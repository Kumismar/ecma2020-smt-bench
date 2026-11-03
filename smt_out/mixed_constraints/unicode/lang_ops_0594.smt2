; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<listing id=x tabindex=1 ondeactivate=alert(1)></listing><input id=y autofocus>") (= x "<source onkeypress=""alert(1)"" contenteditable>test</source>") (= x "<form onbeforecopy=""al\u{10348}ert(1)"" contenteditable>tes\u{10348}t</form>")))
(assert (str.in_re x (re.inter ((_ re.loop 57 61) re.allchar) (re.union ((_ re.from_regex ecma2020 u) "^[\w\u{5c}u0391-\u{5c}uFFE5]{2,20}$") ((_ re.from_regex ecma2020 u) "^(\+\d{1,2}\s)?\(?\d{1,4}\)?[\s.-]?\d{2,4}[\s.-]?(\d{1}[\s.-]?)*$")))))
(check-sat)
