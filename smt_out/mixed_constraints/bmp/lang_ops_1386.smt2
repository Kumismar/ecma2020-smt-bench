; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<strike onkeypress=""alert(1)"" contenteditable>test</strike>") (= x "<bgsound onpaste=""alert(1)"" contenteditable>test</bgsound>") (= x "<select oncut=""alert(1)"" contenteditable>test</select>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=.*\d).{6,20}") (re.diff ((_ re.from_regex ecma2020) "^[0-9]{7}-[0-9]{7}$") (re.comp ((_ re.from_regex ecma2020) "[A-Za-z][0-9][A-Za-z][0-9][A-Za-z][0-9]"))))))
(check-sat)
