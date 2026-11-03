; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<progress draggable=""true"" ondragstart=""alert(1)"">test</progress>") (= x "<element onclick=""alert(1)"">test</element>") (= x "<;A HREF="";http://0102.0146.0007.00000223/"";>;XSS<;/A>;")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[\w.!#$%&?*+/=?^_`{|}~-]+@[\w-]+(?:\.[\w-]+)*$") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z]([a-zA-Z0-9\-]){1,}[a-zA-Z0-9]$")))))
(check-sat)
