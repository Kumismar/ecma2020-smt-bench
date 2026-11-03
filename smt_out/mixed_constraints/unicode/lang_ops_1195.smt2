; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<kbd draggable=""true"" ondrag=""alert(1)"">test</kbd>") (= x "<BODY ONLOAD=alert(\u{2018}XSS\u{2019})>") (= x "<html oncut=""alert(1)"" contenteditable>test</html>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "(?=.*[a-zA-Z])[\w\s]{1,64}") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9]{2}[A-Za-z0-9 ]*$")))))
(check-sat)
