; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """><script>alert(1337)</script>""><script>alert(""XSS by \nxss</h1></marquee>") (= x "<audio onmousemove=""alert(1)"">test</audio>") (= x "<time onmouseleave=""alert(1)"">test</time>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9.!#$%\x26'*+\/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)+$") (re.diff ((_ re.loop 38 41) re.allchar) (re.comp ((_ re.from_regex ecma2020 u) "^IR.+"))))))
(check-sat)
