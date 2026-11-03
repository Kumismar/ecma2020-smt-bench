; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "perl -e &#039;print \&quot;&lt;IMG SRC=java\0script:alert(\&quot;XSS\&quot;)&gt;\&quot;;&#039; &gt; out") (= x "<svg id=x tabindex=1 ondeactivate=alert(1)></svg><input id=y autofocus>") (= x "&lt;iframe src=http&#58;//ha&#46;ckers&#46;org/scriptlet&#46;html&gt;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^3\d{2}\d{6,7}$$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,40}$"))))
(check-sat)
