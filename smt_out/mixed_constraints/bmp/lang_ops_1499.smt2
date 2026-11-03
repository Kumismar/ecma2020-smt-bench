; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<multicol draggable=""true"" ondrag=""alert(1)"">test</multicol>") (= x "<big onpaste=""alert(1)"" contenteditable>test</big>") (= x "<button onclick=""alert(1)"">test</button>")))
(assert (str.in_re x (re.union (re.diff ((_ re.from_regex ecma2020) "[a-z A-Z 0-9 \u{df}]$") (re.comp ((_ re.from_regex ecma2020) "[^\W][a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\@[a-zA-Z0-9_]+(\.[a-zA-Z0-9_]+)*\.[a-zA-Z]{2,4}$"))) (re.comp ((_ re.from_regex ecma2020) "[A-Za-z]+")))))
(check-sat)
