; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<del onbeforepaste=""alert(1)"" contenteditable>test</del>") (= x "<div draggable=""true"" contenteditable>drag me</div><big o\u{1f4a9}ndrop\u{20000}=alert(1) contenteditable>drop here</big>") (= x "<META HTTP-EQUIV=""Set-Cookie"" Content=""USERID=<SCRIPT>alert('XSS')</SCRIPT>"">")))
(assert (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re ">")) (re.union ((_ re.from_regex ecma2020 u) "[0-9]{4}[-][0-9]{4}[-][0-9]{4}[-][0-9]{4}") ((_ re.from_regex ecma2020 u) "^(([0-8][0-9])|(9[0-5])|(2[ab]))[0-9]{3}$$"))) ((_ re.from_regex ecma2020 u) "^[0]{1}[1-9]{1}[0-9]{7,10}"))))
(check-sat)
