; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onerror=""alert(String.fromCharCode(88,83,83))"">") (= x "<x contenteditable onblur=alert(1)>lose focus!") (= x "<menu i\u{10348}d=x contextmenu=x onshow=alert(1)>right click me!")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9\u{e01}-\u{e5b}.,:\(\)@\-\/\s]{0,1000}$") (re.diff (re.++ (str.to_re "<men") re.all) ((_ re.from_regex ecma2020 u) "^[a-zA-Z'  -]+$")))))
(check-sat)
