; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<output id=x tabindex=1 onfocus=alert(1)></output>") (= x """><link rel=import href=data:text/html&comma;&lt;script&gt;alert(1)&lt;&sol;script&gt;") (= x "<image draggable=""true"" ondragenter=""alert(1)"">test</image>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[0-9]{4,5}$") ((_ re.from_regex ecma2020) "(^([0-9]{5})$)|(^[A-Za-z]{1}\d{1}[A-Za-z]{1} *\d{1}[A-Za-z]{1}\d{1}$)")))))
(check-sat)
