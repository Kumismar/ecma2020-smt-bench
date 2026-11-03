; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<IMG STYLE=""xss:expr/*XSS*/ession(alert('XSS'))"">") (= x "<select onpaste=""alert(1)"" contenteditable>test</select>") (= x "<keygen oncut=""alert(1)"" contenteditable>test</keygen>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[^@\s]+@[^@\s]+\.[^@\s]{2,}$") ((_ re.from_regex ecma2020) "^(430463|438106|438587|438628|438628|455038|455390|456407|461795|461796|461797|520386|524133|529117|529495|531662|541497|544170|549852|552137|554637)[0-9]{10}$"))))
(check-sat)
