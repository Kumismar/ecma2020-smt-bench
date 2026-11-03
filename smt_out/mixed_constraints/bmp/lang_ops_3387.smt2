; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<center onmouseout=""alert(1)"">test</center>") (= x "<basefont onmousemove=""alert(1)"">test</basefont>") (= x "<div draggable=""true"" contenteditable>drag me</div><bdi ondrop=alert(1) contenteditable>drop here</bdi>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\+[0-9 ]{5,}") ((_ re.from_regex ecma2020) "[a-zA-Z0-9-]{1,20}\.[a-zA-Z]{2,6}"))))
(check-sat)
