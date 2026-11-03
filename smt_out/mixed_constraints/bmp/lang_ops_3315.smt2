; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<header id=x tabindex=1 onbeforedeactivate=alert(1)></header><input autofocus>") (= x "<div draggable=""true"" contenteditable>drag me</div><s ondrop=alert(1) contenteditable>drop here</s>") (= x "<center onmouseover=""alert(1)"">test</center>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+(?: +[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+)*$") (re.++ re.all (str.to_re "v") re.all)) ((_ re.from_regex ecma2020) "^[A-Za-z0-9 _\.]*[A-Za-z0-9\.][A-Za-z0-9 _\.]*$"))))
(check-sat)
