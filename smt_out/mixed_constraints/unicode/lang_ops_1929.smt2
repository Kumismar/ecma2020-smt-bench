; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<set attributeName=""xlink:href"" begin=""accessKey(b)"" to=""//example.com/?b"" />") (= x "<script ""a='>'"" SRC=""http://www.securitycompass.com/xss.js""></script>") (= x "<object onbeforepaste=""alert(1)"" contenteditable>test</object>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,}$") ((_ re.from_regex ecma2020 u) "((00|\+)\d{2})?[\.\-\s]?(\d){1,3}[\/\.\-\s]?(\d){6,8}")))))
(check-sat)
