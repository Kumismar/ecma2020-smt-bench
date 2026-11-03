; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """><img src=x onerror=window.open('https://www.google.com/');>") (= x "<IMG SRC=x onprogress=""alert(String.fromCharCode(88,83,83))"">") (= x "<element id=x tabindex=1 onfocus=alert(1)></element>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^([wW]{3}[\.][a-zA-Z0-9\.\-]+\.[a-zA-Z]+)*$") (re.comp ((_ re.from_regex ecma2020) "[A-Z\sa-z]{4,20}")))))
(check-sat)
