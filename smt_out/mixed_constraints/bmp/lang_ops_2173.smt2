; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "</script><script>alert('XSS');</script>") (= x "<style TYPE=""text/javascript"">document.vulnerable=true;</style>") (= x "<i onmouseenter=""alert(1)"">test</i>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(?:http(s)?:\/\/)?[\w.-]+(?:\.[\w\.-]+)+[\w\-\._~:/?#[\]@!\$&'\(\)\*\+,;=.]+$") (re.comp (re.inter ((_ re.from_regex ecma2020) "^[6-9]\d{9}$") (re.comp ((_ re.from_regex ecma2020) "^1[3458]{1}[0-9]{9}$")))))))
(check-sat)
