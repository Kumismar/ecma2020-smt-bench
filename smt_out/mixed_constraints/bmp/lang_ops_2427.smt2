; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;A HREF=&quot;http://www.gohttp://www.google.com/ogle.com/&quot;&gt;XSS&lt;/A&gt;") (= x "<animate attributeName=""xlink:href"" begin=""0"" from=""javascript:alert(137)"" to=""&"" />") (= x "<area draggable=""true"" ondragend=""alert(1)"">test</area>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "\s*[\w\-\+_]+(\.[\w\-\+_]+)*@[\w\-\+_]+\.[\w\-\+_]+(\.[\w\-\+_]+)*\s*") (re.union ((_ re.from_regex ecma2020) "^[A-HJ-NPR-Za-hj-npr-z\d]{8}[\dX][A-HJ-NPR-Za-hj-npr-z\d]{8}") (re.diff (re.++ re.all (str.to_re "&gt;")) ((_ re.from_regex ecma2020) ".*\S\S.*"))))))
(check-sat)
