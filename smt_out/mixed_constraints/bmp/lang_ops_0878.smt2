; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<plaintext draggable=""true"" ondragenter=""alert(1)"">test</plaintext>") (= x "<a onmousemove=""alert(1)"">test</a>") (= x "<data draggable=""true"" ondragenter=""alert(1)"">test</data>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^([^.@]+)(\.[^.@]+)*@([^.@]+\.)+([^.@]+)$") ((_ re.from_regex ecma2020) "^[+]?[\s./0-9]*[(]?[0-9]{1,4}[)]?[-\s./0-9]*$"))))
(check-sat)
