; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "&lt;A HREF=&q\u{1f4a9}uot;http://www.goog\u{1f600}le.com./&quot;&gt;XSS&lt;/A&gt;") (= x "<basefont id=x tabindex=1 onactivate=alert(1)></basefont>") (= x "<span draggable=""true"" ondragstart=""alert(1)"">test</span>")))
(assert (not (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,}([\s][A-Za-z\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}']{2,})+$") ((_ re.from_regex ecma2020 u) "(?=.*[A-Za-z])[A-Za-z\s\.]*"))))))
(check-sat)
