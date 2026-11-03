; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;IMG SRC="";jav&;#x0A;ascript:alert(';XSS';);"";>;") (= x "<thead onbeforepaste=""alert(1)"" contenteditable>test</thead>") (= x "<x onmouseup=alert(1)>click this!")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{5,5}$") ((_ re.from_regex ecma2020 u) "^[^\s]+.*$"))))
(check-sat)
