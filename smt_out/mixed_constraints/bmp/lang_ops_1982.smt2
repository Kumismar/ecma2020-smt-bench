; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;SCRIPT a="";blah""; ';'; SRC="";http://ha.ckers.org/xss.js"";>;<;/SCRIPT>;") (= x "<fieldset id=x tabindex=1 onactivate=alert(1)></fieldset>") (= x "<style>:target {color:red;}</style><optgroup id=x style=""transition:color 1s"" ontransitionend=alert(1)></optgroup>")))
(assert (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z]{1,}") (re.comp ((_ re.from_regex ecma2020) "^(http:\/\/|https:\/\/|)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$"))) (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9 './,]+$"))))))
(check-sat)
