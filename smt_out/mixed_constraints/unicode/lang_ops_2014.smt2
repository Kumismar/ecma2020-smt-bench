; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pre oncontextmenu=""alert(1)"">test</pre>") (= x "<content onmouseover=""alert(1)"">test</content>") (= x "<colgroup onfocusout=alert(1) tabindex=1 id=x></colgroup><input autofocus>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.loop 73 77) re.allchar) (re.union ((_ re.from_regex ecma2020 u) "^[\u{410}-\u{44f}\u{456}' ]{1,}$") ((_ re.from_regex ecma2020 u) "\d{1,5}-\d{1,4}-\d{4,5}"))) ((_ re.from_regex ecma2020 u) "(^[a-zA-Z\d]{3}$)|(^\d{5}$)|(^[a-zA-Z\d]{6}$)"))))
(check-sat)
