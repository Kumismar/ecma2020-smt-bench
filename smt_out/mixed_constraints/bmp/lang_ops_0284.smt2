; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""\xE2\x80\x89javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<command onmouseenter=""alert(1)"">test</command>") (= x "<? foo=""><x foo='?><script>alert(1)</script>'>"">")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(http:\/\/|https:\/\/|)[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,3}(/\S*)?$") ((_ re.from_regex ecma2020) "(?=.{6,}).*"))))
(check-sat)
