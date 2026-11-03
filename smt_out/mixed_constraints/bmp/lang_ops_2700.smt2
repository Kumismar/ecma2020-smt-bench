; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<meter onpaste=""alert(1)"" contenteditable>test</meter>") (= x "<strong onkeyup=""alert(1)"" contenteditable>test</strong>") (= x "<noframes draggable=""true"" ondragleave=""alert(1)"">test</noframes>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) ".*[!#-9A-~]+@+[a-z0-9]+.+[^.]$.*") ((_ re.from_regex ecma2020) "^[\w._%-]+@[\w.-]+\.[a-zA-Z]{2,4}$"))))
(check-sat)
