; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<small onmouseout=""alert(1)"">test</small>") (= x "<td onfocusout=alert(1) tabindex=1 id=x></td><input autofocus>") (= x """`'><script>\xE2\x80\x85javascript:alert(1)</script>")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^((8|\+7)[\- ]?)?(\(?\d{4}\)?[\- ]?)?[\d\- ]{6,10}$") ((_ re.from_regex ecma2020) "^[a-zA-z ]*$")) (re.inter (re.++ re.all (str.to_re "(1)</") re.all) (re.comp ((_ re.from_regex ecma2020) "^[1-9\(]{1}[0-9\-\s\.\(\)]+$")))))))
(check-sat)
