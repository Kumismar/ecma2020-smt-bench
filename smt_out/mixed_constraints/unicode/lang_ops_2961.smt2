; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "Redirect 302 /a.jpg http://victimsite.com/admin.asp&deleteuser") (= x "<pre id=x tabindex=1 onfocusin=alert(1)></pre>") (= x "<set attributeName=""xlink:href"" begin=""accessKey(b)"" to=""//example.com/?b"" />")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "\(\d\d\) \d\d\d\d\d-\d\d\d\d$") ((_ re.from_regex ecma2020 u) "^(?:(?:\+|00)?(55)\s?)?(\(0?\d{2}\)\s?|0?\d{2}[\s.-]?)\d{4,5}[\s.-]?\d{4}$")))))
(check-sat)
