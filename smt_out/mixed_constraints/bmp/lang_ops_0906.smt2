; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&lt;A HREF=&quot;h&#x0A;tt&#09;p://6&amp;#09;6.000146.0x7.147/&quot;&gt;XSS&lt;/A&gt;") (= x "<rb onmouseenter=""alert(1)"">test</rb>") (= x "<;TABLE BACKGROUND="";javascript:alert(';XSS';)"";>;<;/TABLE>;")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%.,:;-_^\u{b0}+*#?&])[A-Za-z\d@$!%.,:;-_^\u{b0}+*#?&]{8,}$") (re.comp ((_ re.from_regex ecma2020) "^\+[0-9]{7,17}$"))) ((_ re.loop 59 61) re.allchar)))))
(check-sat)
