; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dd onmouseover=""alert(1)"">test</dd>") (= x "<image src=validimage.png onloadend=alert(1)>") (= x "<code id=x tabindex=1 ondeactivate=alert(1)></code><input id=y autofocus>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(?=^.{0,20}$)^\+?(\d[\d\-\.\s]+)?(\([\d\-\.\s]+\))?[\d\-\.\s]+\d$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]{2,6})+$")))))
(check-sat)
