; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;SPAN DATASRC=#I DATAFLD=C DATAFORMATAS=HTML&gt;&lt;/SPAN&gt;") (= x "<nobr onbeforepaste=""alert(1)"" content\u{1f4a9}editable>test</nobr>") (= x "<style>:target {color:red;}</style><content id=x style=""transition:color 1s"" ontransitionend=alert(1)></content>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "\b[\w\.-]+@((?!gmail|googlemail|yahoo|hotmail).)[\w\.-]+\.\w{2,4}\b") ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{4,30}"))))
(check-sat)
