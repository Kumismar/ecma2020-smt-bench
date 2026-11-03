; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a href=""\x03javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>") (= x "<mete\u{10348}r id=x tabindex=1 onbeforedeactivate=alert(1)></meter><input autofocus>") (= x "<a href=""javas\x07cript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "[A-Za-z ]{1,30}") (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z- ]*$") ((_ re.from_regex ecma2020) "(?=.*[a-zA-Z]).{4,}")))))
(check-sat)
