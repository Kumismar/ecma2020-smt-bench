; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""\xE2\x80\xAFjavascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<plaintext onmousemove=""alert(1)"">test</plaintext>") (= x "<div draggable=""true"" contenteditable>drag me</div><head ondragover=alert(1) contenteditable>drop here</head>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z _]*[A-Za-z][A-Za-z _]*$") ((_ re.from_regex ecma2020 u) "^[\s\p{L}]+ [\s\p{L}]+")))))
(check-sat)
