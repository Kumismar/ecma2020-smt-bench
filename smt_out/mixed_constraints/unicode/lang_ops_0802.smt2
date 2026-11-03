; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<applet onmouseover=""alert(1)"">test</applet>") (= x "<bdi onmouseenter=""alert(1)"">test</bdi>") (= x "<svg xmlns=""http://www.w3.org/2000/svg"" onload=""alert(document.domain)""/>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^((?!abuse|info|admin|billing).)*$") (re.comp ((_ re.from_regex ecma2020 u) "^([(][0-9]{1,3}[)][-]?)?([0-9][-]?){3,16}[0-9]$"))) ((_ re.from_regex ecma2020 u) "^[0-9]{9,12}"))))
(check-sat)
