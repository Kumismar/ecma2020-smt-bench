; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<DIV STYLE=""width:expression(javascript:alert(1));"">") (= x "<a href=http://foo.bar/#x=`y></a><img alt=""`><img src=xx:x onerror=alert(108)></a>"">") (= x "<marquee id=x tabindex=1 onbeforeactivate=alert(1)></marquee>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[_A-z0-9-_]{1,20}$") (re.comp ((_ re.loop 47 59) re.allchar))) (re.comp ((_ re.from_regex ecma2020) "[A-z]{2}"))))))
(check-sat)
