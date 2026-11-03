; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><hr style=""animation-name:x"" onanimationstart=""alert(1)""></hr>") (= x "<;EMBED SRC="";http://ha.ckers.org/xss.swf""; AllowScriptAccess="";always"";>;<;/EMBED>;") (= x "<div draggable=""true"" contenteditable>drag me</div><embed ondragover=alert(1) contenteditable>drop here</embed>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{3,4}$") ((_ re.from_regex ecma2020) "^\(?\d{3}\)?[-\s]\d{3}[-\s]\d{4}.*?$")))))
(check-sat)
