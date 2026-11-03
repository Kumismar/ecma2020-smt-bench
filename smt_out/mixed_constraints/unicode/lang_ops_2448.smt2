; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<embed oncontextmenu=""alert(1)"">test</embed>") (= x "<slot draggable=""true"" ondragstart=""alert(1)"">test</slot>") (= x "<progress onbeforecopy=""alert(1)"" content\u{10348}editable>test</progress>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([123]0|[012][1-9]|31)\/(0[1-9]|1[012])\/(19[0-9][0-9]|20[0-9][0-9])$") (re.union ((_ re.from_regex ecma2020 u) ".{8,16}") (re.comp (re.++ re.all (str.to_re "/slot>")))))))
(check-sat)
