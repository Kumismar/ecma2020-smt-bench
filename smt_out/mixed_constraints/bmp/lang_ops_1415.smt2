; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg xmlns=""#""><script>alert(1)</script></svg>") (= x "'>alert(1)</script><script/1='") (= x "</script><img/*%00/src=""worksinchrome&colon;prompt&#x28;1&#x29;""/%00*/onerror='eval(src)'>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[^;<>=]{2,100}$") ((_ re.from_regex ecma2020) "[0-9]{2}[0-9]{5}[0-9]{4}")))))
(check-sat)
