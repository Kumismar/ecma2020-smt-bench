; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a onkeypress=""alert(1)"" contenteditable>test</a>") (= x "<iframe src iframe src=""javascript:javascript:alert(1)""></iframe src>") (= x "<body onerror=alert(1) onload=/>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$") ((_ re.from_regex ecma2020) "^[a-zA-Z \u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}]+$"))))
(check-sat)
