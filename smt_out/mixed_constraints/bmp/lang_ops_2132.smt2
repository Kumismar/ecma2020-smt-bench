; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<;STYLE>;@im\port';\ja\vasc\ript:alert("";XSS"";)';;<;/STYLE>;") (= x """><img src=x onerror=prompt(1);>") (= x "&lt;FRAMESET&gt;&lt;FRAME SRC=\""javascript&#058;alert('XSS');\""&gt;&lt;/FRAMESET&gt;")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "^(([a-zA-Z]|[0-9])|([-]|[_]|[.]))+[@](([a-zA-Z0-9])|([-])){2,63}[.](([a-zA-Z0-9]){2,63})+$") (re.comp ((_ re.from_regex ecma2020) "\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b")))))
(check-sat)
