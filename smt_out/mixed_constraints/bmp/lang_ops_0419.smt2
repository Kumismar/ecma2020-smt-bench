; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x """`'><script>\xC2\xA0javascript:alert(1)</script>") (= x "<svg id=x tabindex=1 onactivate=alert(1)></svg>") (= x "<;XML ID="";xss"";>;<;I>;<;B>;<;IMG \u{1f600}SRC="";jav\u{20000}as<;!-- -->;cript:alert(';XSS';)"";>;<;/B>;<;/I>;<;/XML>;")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "[0-9]{3}\.[0-9]{3}\.[0-9]{3}-[0-9]{2}$") ((_ re.from_regex ecma2020) "^(([0,1][0-9])|(2[0-3])):[0-5][0-9]$")))))
(check-sat)
