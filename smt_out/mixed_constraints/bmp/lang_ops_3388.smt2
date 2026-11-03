; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style draggable=""true"" ondrag=""alert(1)"">test</style>") (= x "<li draggable=""true"" ondrag=""alert(1)"">test</li>") (= x "<SCRIPT/SRC=""%(jscript)s""></SCRIPT>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "^([0-9\-\(\) ]*)$") (re.comp (re.diff (re.++ re.all (str.to_re "e>")) ((_ re.from_regex ecma2020) "^[0-9]{11,11}$")))))))
(check-sat)
