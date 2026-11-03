; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable\u{20000}=""true"" contenteditable>drag me</div><rb ondrop=alert(1) contenteditable>drop here</rb>") (= x "&lt;A HREF=&quot;http://0102.0146.0007.00000223/&quot;&gt;XSS&lt;/A&gt;") (= x "<;IMG SRC=javascript:alert(';XSS';)>;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9]{8,}$") (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]{2,}\.[a-zA-Z]{2,}$")))))
(check-sat)
