; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><base ondragover=alert(1) contenteditable>drop here</base>") (= x "<style id=x tabindex=1 onbeforedeactivate=alert(1)></style><input autofocus>") (= x "<fieldset ondblclick=""alert(1)"">test</fieldset>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[ ]*[^""""<>]{0,50}[ ]*$") ((_ re.from_regex ecma2020) "^[A-Za-z\s\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,5}$"))))
(check-sat)
