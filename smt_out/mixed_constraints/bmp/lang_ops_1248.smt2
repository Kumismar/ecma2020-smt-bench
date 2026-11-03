; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<label oncut=""alert(1)"" contenteditable>test</label>") (= x "<script>alert(1);</script>") (= x "<svg><label onload=aler\u{20000}t(1)></label>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[A-Z]{1,2}\d[A-Z\d]? \d[ABD-HJLNP-UW-Z]{2}$") (re.inter (re.++ (str.to_re "<scrip") re.all) ((_ re.from_regex ecma2020) "(^[A-Za-z]{2}[0-9]{2}\s?[A-Za-z]{3}$)|(^[A-Za-z][0-9]{1,3}[A-Za-z]{3}$)|(^[A-Za-z]{3}[0-9]{1,3}[A-Za-z]$)|(^[0-9]{1,4}[A-Za-z]{1,2}$)|(^[0-9]{1,3}[A-Z]{1,3}$)|(^[A-Z]{1,2}[0-9]{1,4}$)|(^[A-Za-z]{1,3}[0-9]{1,3}$)|(^[A-Za-z]{1,3}[0-9]{1,4}$)|(^[0-9]{3}[DX]{1}[0-9]{3}$)")))))
(check-sat)
