; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;OBJECT TYPE="";text/x-scriptlet""; DATA="";http://ha.ckers.org/scriptlet.html"";>;<;/OBJECT>;") (= x "<output onbeforepaste=""alert(1)"" contenteditable>test</output>") (= x "&#X0\u{10348}0003c;")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[0-9A-Za-z ]{1,10}$") ((_ re.from_regex ecma2020 u) "^[_a-z0-9-]+(.[_a-z0-9-]+)*@[a-z0-9-]+(.[a-z0-9-]+)*(.[a-z]{2,})$")) ((_ re.loop 86 98) re.allchar)))))
(check-sat)
