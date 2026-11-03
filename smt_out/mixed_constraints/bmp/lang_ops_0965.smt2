; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<!--[if gte IE 4]><SCRIPT>alert('XSS');</SCRIPT><![endif]-->") (= x "<body onfocus body onfocus=""javascript:javascript:alert(1)""></body onfocus>") (= x "<meter draggable=""true"" ondrag=""alert(1)"">test</meter>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9._-]+@[a-zA-Z0-9-]+\.[a-zA-Z]{2,5}$") ((_ re.from_regex ecma2020) "^((?=.*\d)(?=.*[A-Z])(?=.*\W).{8,8})$")))))
(check-sat)
