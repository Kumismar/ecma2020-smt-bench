; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "ABC<div style=""x:\x0Bexpression(javascript:alert(1)"">DEF") (= x "<div draggable=""true"" contenteditable>drag me</div><keygen ondragover=alert(1) contenteditable>drop here</keygen>") (= x "<spacer onpaste=""alert(1)"" contenteditable>test</spacer>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9]{3,18}") ((_ re.loop 55 60) re.allchar)) ((_ re.from_regex ecma2020 u) "^(\d{1,2})$"))))
(check-sat)
