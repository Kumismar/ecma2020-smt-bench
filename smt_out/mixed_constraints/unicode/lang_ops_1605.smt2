; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<applet id=x tabindex=1 ondeactivate=alert(1)></applet><input id=y autofocus>") (= x "<;BODY ONLOAD=alert(';XSS';)>;") (= x "<noembed oncontextmenu=""al\u{1f4a9}ert(1)"">\u{10348}test</noembed>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9@_.]{3,}$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-z0-9][a-z0-9\-]*[a-z0-9]$") ((_ re.from_regex ecma2020 u) "^[0-9]{1,2}$")))))))
(check-sat)
