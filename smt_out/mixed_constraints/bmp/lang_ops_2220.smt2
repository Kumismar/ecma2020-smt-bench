; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<link onmousedown=""alert(1)"">test</link>") (= x "<var onmouseleave=""alert(1)"">test</var>") (= x "<div draggable=""true"" contenteditable>drag me</div><element ondragover=alert(1) contenteditable>drop here</element>")))
(assert (str.in_re x (re.inter (re.union (re.++ (str.to_re "<") re.all) (re.comp ((_ re.from_regex ecma2020) "^.{1,30}$"))) ((_ re.from_regex ecma2020) "^[t].{3,}"))))
(check-sat)
