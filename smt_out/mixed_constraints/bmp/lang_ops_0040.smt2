; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<script id=x tabindex=1 onfocusin=alert(1)></script>") (= x """><img src=x onerror=javascript:alert(('1'))>") (= x "<div draggable=""true"" contenteditable>drag me</div><kbd ondrop=alert(1) contenteditable>drop here</kbd>")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re ">")) (re.inter ((_ re.from_regex ecma2020) "[0-3][0-9]|[1-9]") ((_ re.from_regex ecma2020) "^[a-zA-Z]{0,2}-?[0-9]+$")))))
(check-sat)
