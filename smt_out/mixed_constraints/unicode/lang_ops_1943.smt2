; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;SCRIPT&gt;document.write(&quot;&lt;SCRI&quot;);&lt;/SCRIPT&gt;PT SRC=&quot;http://ha.ckers.org/xss.js&quot;&gt;&lt;/SCRIPT&gt;") (= x "<!--[if]><script>javascript:alert(1)</script -->") (= x "<article onmousemove=""alert(1)"">test</article>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\u{d6}\u{f6}\u{fc}\u{dc}\u{c4}\u{e4}\u{df}\s\-]*)$") ((_ re.from_regex ecma2020 u) "^((0[1-9])|([1-8][0-9])|(9[0-8])|(2A)|(2B))[0-9]{3}$"))))
(check-sat)
