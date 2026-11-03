; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&lt;OBJECT TYPE=&quot;text/x-scriptlet&quot; DATA=&quot;http://ha.ckers.org/scriptlet.html&quot;&gt;&lt;/OBJECT&gt;") (= x "<;BODY BACKGROUND="";javascript:alert(';XSS';);"";>;") (= x "<bdi onmouseout=""alert(1)"">test</bdi>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_\.\s]{1,80}$") ((_ re.from_regex ecma2020) "\d{12}$")))))
(check-sat)
