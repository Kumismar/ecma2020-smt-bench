; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<output id=x tabindex=1 onfocusin=alert(1)></output>") (= x "<area onbeforecopy=""alert(1)"" contenteditable>test</area>") (= x "<a href=""\x16javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?=.*[a-zA-Z])[a-zA-Z0-9]\w{2,32}$") (re.comp ((_ re.from_regex ecma2020) "^([a-zA-Z]+[\s'.]?)+\S$"))))))
(check-sat)
