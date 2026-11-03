; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<x ondblclick=alert(1)>double click this!") (= x "<details onpaste=""alert(1)"" contenteditable>test</details>") (= x "<cite oncut=""alert(1)"" contenteditable>test</cite>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=^.{8,20}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$") (re.comp ((_ re.from_regex ecma2020) "[A-z0-9 ._-]{2,60}$")))))
(check-sat)
