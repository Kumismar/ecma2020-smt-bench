; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><output ondragover=alert(1) contenteditable>drop here</output>") (= x "<textarea draggable=""true"" ondragstart=""alert(1)"">test</textarea>") (= x "<img usemap=#x><map name=""x""><area href onfocus=alert(1) id=x>")))
(assert (str.in_re x (re.diff (re.inter (re.++ re.all (str.to_re "rea>")) ((_ re.from_regex ecma2020 u) "^[\w._%-]+@[\w.-]+\.[a-zA-Z]{2,4}$")) (re.comp ((_ re.from_regex ecma2020 u) "([A-Za-z0-9_]|[-])+")))))
(check-sat)
