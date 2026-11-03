; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<button onkeydown=""alert(1)"" contenteditable>test</button>") (= x "<map onfocusout=alert(1) tabindex=1 id=x></map><input autofocus>") (= x "<style>:target {color:red;}</style><main id=x style=""transition:color 1s"" ontransitionend=alert(1)></main>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[.A-Za-z0-9\w]{1,20}") (re.union (re.++ re.all (str.to_re "focus>")) ((_ re.from_regex ecma2020 u) "^\d?\d?\d[,.]?\d?\d?$")))))
(check-sat)
