; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<nextid draggable=""true"" ondragend=""alert(1)"">test</nextid>") (= x "<dl id=x tabindex=1 onfocusin=alert(1)></dl>") (= x "<caption onkeypress=""alert(1)"" contenteditable>test</caption>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(?:[0-9]??).{9,14}[0-9]$") (re.inter (re.++ re.all (str.to_re "le") re.all) ((_ re.from_regex ecma2020 u) "([0-9]|[0-2][0-9]{1}|[3][0])")))))))
(check-sat)
