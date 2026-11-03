; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<output draggable=""true"" ondragstart=""alert(1)"">test</output>") (= x "<rp onmousedown=""alert(1)"">test</rp>") (= x "<body onMouseMove body onMouseMove=""javascript:javascript:alert(1)""></body \u{1f4a9}onMouseMove>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[0-9+-]{10,20}") (re.comp (re.inter (re.++ re.all (str.to_re "gab") re.all) ((_ re.from_regex ecma2020) "[ \t\r\n\f0-9-+,-,(,)]*$")))))))
(check-sat)
