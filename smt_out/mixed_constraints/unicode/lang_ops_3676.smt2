; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><article ondrop=alert(1) contenteditable>drop here</article>") (= x "<output onmouseenter=""alert(1)"">test</output>") (= x "&lt;BODY ONLOAD=alert('XSS')&gt;")))
(assert (not (str.in_re x (re.diff (re.inter (re.++ re.all (str.to_re "<out") re.all) ((_ re.from_regex ecma2020 u) "^(?:[1-9]|\d\d\d*)$")) ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9-\.]+@[a-zA-Z0-9-\.]+\.[a-zA-Z0-9.]{2,5}$")))))
(check-sat)
