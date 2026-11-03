; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<audio oncut=""alert(1)"" contenteditable>test</audio>") (= x "<link rel=stylesheet href=1 onerror=alert(1)>") (= x "<SCRIPT a=`>` SRC=""http://ha.ckers.org/xss.js""></SCRIPT>")))
(assert (str.in_re x (re.diff (re.++ re.all (str.to_re "audio>")) (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9][A-Za-z0-9.,: '-]{1,}$") ((_ re.from_regex ecma2020 u) "^50$")))))
(check-sat)
