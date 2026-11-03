; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<optgroup onbeforecopy=""alert(1)"" contenteditable>test</optgroup>") (= x "<map draggable=""true"" ondragend=""alert(1)"">test</map>") (= x "<marquee loop=1 width=0 onfinish=alert(1)>")))
(assert (not (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re "1)"">te") re.all) ((_ re.from_regex ecma2020 u) "^[\w ]+$")) ((_ re.from_regex ecma2020 u) "\d{12}$")))))
(check-sat)
