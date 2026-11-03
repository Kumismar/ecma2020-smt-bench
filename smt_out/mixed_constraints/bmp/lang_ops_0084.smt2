; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<select autofocus onfocus=alert(1)>") (= x "<col id=x tabindex=1 onbeforeactivate=alert(1)></col>") (= x "<xmp onbeforecopy=""alert(1)"" contenteditable>test</xmp>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,10}$") (re.comp ((_ re.from_regex ecma2020) "^\s*(\S+\s+){0,4}\S*$")))))
(check-sat)
