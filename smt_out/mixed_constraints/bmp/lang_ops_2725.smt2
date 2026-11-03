; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<rtc onmouseup=""alert(1)"">test</rtc>") (= x "<style>@keyframes x{}</style><b style=""animation-name:x"" onanimationstart=""alert(1)""></b>") (= x "&lt;STYLE&gt;@im\port&apos;\ja\vasc\ript:alert(&quot;XSS&quot;)&apos;;&lt;/STYLE&gt;")))
(assert (str.in_re x (re.diff (re.inter (re.inter ((_ re.from_regex ecma2020) "^\d{10}10$|(\(\d{3}\)\s*)?\d{3}[\s-]?\d{4}$") ((_ re.loop 75 88) re.allchar)) ((_ re.from_regex ecma2020) "^([0-2][0-9]|3[0-1])(\/|-)(0[1-9]|1[0-2])\2(\d{4})$")) ((_ re.from_regex ecma2020) "^[- 0-9A-Za-z|\u{2122} ]+$"))))
(check-sat)
