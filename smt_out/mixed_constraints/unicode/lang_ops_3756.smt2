; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;A HREF="";http://1113982867/"";>;XSS<;/A>;") (= x "<iframe src=""http://www.example.org/dropHere.html""></iframe>//[""'`-->]]>]</div>") (= x "<! foo=""[[[Inception]]""><x foo=""]foo><script>alert(1)</script>"">")))
(assert (not (str.in_re x (re.union (re.++ re.all (str.to_re "re") re.all) (re.union ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[A-Za-z]{2,16}$") (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z_ ]+$")))))))
(check-sat)
