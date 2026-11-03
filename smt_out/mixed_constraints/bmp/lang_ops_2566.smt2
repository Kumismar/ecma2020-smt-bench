; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><main ondrop=alert(1) contenteditable>drop here</main>") (= x "<bdo oncopy=""alert(1)"" contenteditable>test</bdo>") (= x "<center draggable=""true"" ondrag=""alert(1)"">test</center>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~](\.?[-!#$%&'*+\/0-9=?A-Z^_a-z`{|}~])*@[a-zA-Z0-9](-*\.?[a-zA-Z0-9])*\.[a-zA-Z](-?[a-zA-Z0-9])+$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_.-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z0-9]{2,6}$")) ((_ re.from_regex ecma2020) "^[A-Za-z]+@{1}[A-Za-z]+\.{1}[A-Za-z]{2,}$"))))
(check-sat)
