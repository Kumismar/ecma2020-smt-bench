; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<hr onmouseleave=""alert(1)"">test</hr>") (= x "<caption onfocusout=alert(1) tabindex=1 id=x></caption><input autofocus>") (= x "&lt;OBJECT classid=clsid&#58;ae24fdae-03c6-11d1-8b76-0080c744f389&gt;&lt;param name=url value=javascript&#058;alert('XSS')&gt;&lt;/OBJECT&gt;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9-_@?!]{5,20}$") ((_ re.from_regex ecma2020 u) "(?!1234567)(?!1{5})(?!2{5})(?!3{5})(?!4{5})(?!5{5})(?!6{5})(?!7{5})(?!8{5})(?!9{5})(?!0{5})[0-9]{11}"))))
(check-sat)
