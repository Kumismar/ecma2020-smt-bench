; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<noscript oncut=""alert(1)"" contenteditable>test</noscript>") (= x "<blockquote draggable=""true"" ondrag=""alert(1)"">test</blockquote>") (= x "<mark onmouseout=""alert(1)"">test</mark>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(\d)(.+)?(\d)(.+)?(\d{4})$") ((_ re.from_regex ecma2020 u) "^[^@]+@[^\.]+\..{2,}$"))))
(check-sat)
