; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<samp draggable=""true"" ondrag=""alert(1)"">test</samp>") (= x "<address oncut=""alert(1)"" contenteditable>test</address>") (= x "<img """"""><script>alert(""XSS by \nxss"")</script><marquee><h1>XSS by xss</h1></marquee>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[\u{30a2}-\u{30f3}\u{309b}\u{309c}\u{30a1}-\u{30a9}\u{30e3}-\u{30e7}\u{30fc}\u{300c}\u{300d}\u{3001}]+$") ((_ re.from_regex ecma2020 u) "[a-z\sA-Z]+$")))))
(check-sat)
