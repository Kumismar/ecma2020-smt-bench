; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<! foo=""[[[x]]""><x foo=""]foo><script>alert(91)</script>"">") (= x "<rtc onmouseout=""alert(1)"">test</rtc>") (= x "&lt;/TITLE&gt;&lt;SCRIPT&gt;alert(\""XSS\"");&lt;/SCRIPT&gt;")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[0-9]{0,20}") (re.diff ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9-_./]{8,16})$") (re.++ re.all (str.to_re """);") re.all)))))
(check-sat)
