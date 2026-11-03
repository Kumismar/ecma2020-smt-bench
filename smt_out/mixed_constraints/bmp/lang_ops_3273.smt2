; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;SCRIPT ="";blah""; SRC="";http://ha.ckers.org/xss.js"";>;<;/SCRIPT>;") (= x "<style>:target {color: red;}</style><kbd id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></kbd>") (= x "<isindex id=x tabindex=1 ondeactivate=alert(1)></isindex><input id=y autofocus>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "\d{2,5}-?\d{1,4}-?\d{4}") ((_ re.from_regex ecma2020) "^[0-9]{4,15}$")))))
(check-sat)
