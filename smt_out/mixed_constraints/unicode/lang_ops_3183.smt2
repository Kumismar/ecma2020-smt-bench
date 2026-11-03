; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<output onfocusout=alert(1) tabindex=1 id=x></output><input autofocus>") (= x "<video/poster/onerror=alert()>") (= x "<s onmousemove=""alert(1)"">test</s>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[0-9A-Za-z]{2}[\-0-9A-Za-z]{0,27}[0-9A-Za-z]{2}") ((_ re.from_regex ecma2020 u) "^[\w\.]+@[a-zA-Z_]+\.[a-zA-Z]{1,4}$"))))
(check-sat)
