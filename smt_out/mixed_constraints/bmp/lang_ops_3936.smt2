; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<address onbeforepaste=""alert(1)"" contenteditable>test</address>") (= x "<script>a=/XSS/\ndocument.vulnerable=true;</script>") (= x "<ins draggable=""true"" ondragleave=""alert(1)"">test</ins>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$") ((_ re.from_regex ecma2020) "^[0-9]+.?[0-9]*$")))))
(check-sat)
