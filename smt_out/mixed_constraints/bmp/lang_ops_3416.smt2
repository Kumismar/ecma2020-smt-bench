; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<big o\u{1d400}nfocusout=alert(1) tabindex=1 id=x></big><input autofocus>") (= x "<dir draggable=""true"" ondragend=""alert(1)"">test</dir>") (= x "<body onscroll=alert(XSS)><br><br><br><br><br><br>...<br><br><br><br><input autofocus>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^\s*(\S+\s+){0,4}\S*$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9 './,]+$")) (re.++ re.all (str.to_re "d") re.all))))
(check-sat)
