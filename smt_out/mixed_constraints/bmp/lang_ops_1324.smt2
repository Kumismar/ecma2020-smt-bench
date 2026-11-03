; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<canvas onkeyup=""alert(1)"" contenteditable>test</canvas>") (= x "<b onmousedown=""alert(1)"">test</b>") (= x "<div draggable=""true"" contenteditable>drag me</div><dt ondragover=alert(1) contenteditable>drop here</dt>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^\+?[0-9]{2,6}[/\-]?[0-9]{2,12}$") (re.union (re.diff ((_ re.from_regex ecma2020) "^([a-zA-Z-.\u{f3}]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}]|[-z0-9-\s])+$") (re.comp ((_ re.loop 24 39) re.allchar))) ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w\S{6,}")))))
(check-sat)
