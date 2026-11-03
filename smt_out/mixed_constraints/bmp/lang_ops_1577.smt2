; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<menu id=x tabindex=1 onfocusin=alert(1)></menu>") (= x "<legend oncopy=""alert(1)"" contenteditable>test</legend>") (= x "<big oncut=""alert(1)"" contenteditable>test</big>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[0-9]{4}s?[a-zA-Z]{2}") (re.comp ((_ re.from_regex ecma2020) "^\w+\S*@\w+\S*\.\w+$"))))))
(check-sat)
