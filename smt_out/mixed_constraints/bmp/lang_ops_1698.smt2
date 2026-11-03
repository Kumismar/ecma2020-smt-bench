; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<ins onclick=""alert(1)"">test</ins>") (= x "<pre onmousemove=""alert(1)"">test</pre>") (= x "<div style=content:url(data:image/svg+xml,%3Csvg/%3E);visibility:hidden onload=alert(41)></div>//[""'`-->]]>]</div>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(THJN|thjn)$") (re.inter ((_ re.from_regex ecma2020) "[a-z0-9.-]+\.[a-z]{2,}$") ((_ re.from_regex ecma2020) "^[a-\u{17c}A-\u{17b}]{2,20}$"))))))
(check-sat)
