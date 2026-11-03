; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<rtc id=x tabindex=1 onfocusin=alert(1)></rtc>") (= x "<tfoot onfocusout=alert(1) tabindex=1 id=x></tfoot><input autofocus>") (= x """`'><script>\xC2\xA0javascript:alert(1)</script>")))
(assert (str.in_re x (re.diff (re.union (re.diff (re.++ (str.to_re """`'") re.all) ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_.+-]+@[A-Za-z0-9-]+[.](?!con$)[A-Za-z0-9-.]+$")) (re.comp ((_ re.from_regex ecma2020 u) "^\d{3}-?\d{4}$"))) ((_ re.from_regex ecma2020 u) "^[0-9.]*$"))))
(check-sat)
