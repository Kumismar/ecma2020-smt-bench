; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dt id=x tabindex=1 ondeactivate=alert(1)></dt><input id=y autofocus>") (= x "<BODY ONLOAD=alert('hellox worldss')>") (= x "<shadow onmouseenter=""alert(1)"">test</shadow>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^(\d{2,3})$") (re.comp (re.diff ((_ re.from_regex ecma2020) "8\(\d\d\d\) \d\d\d-\d\d-\d\d") ((_ re.from_regex ecma2020) "^[\\(]{0,1}([0-9]){3}[\\)]{0,1}[ ]?([^0-1]){1}([0-9]){2}[ ]?[-]?[ ]?([0-9]){4}[ ]*((x){0,1}([0-9]){1,5}){0,1}$"))))))))
(check-sat)
