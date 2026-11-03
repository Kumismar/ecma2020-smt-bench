; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<br draggable=""true"" ondragenter=""alert(1)"">test</br>") (= x "<svg><video onload=alert(1)></video>") (= x "<form draggable=""true"" ondragend=""alert(1)"">test</form>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,}$") ((_ re.from_regex ecma2020) "^[\w0-9_\+-]+(\.[\w0-9_\+-]+)*@[\w0-9-]+(\.[\w0-9-]+)*\.([a-zA-Z]{2,4})$"))))
(check-sat)
