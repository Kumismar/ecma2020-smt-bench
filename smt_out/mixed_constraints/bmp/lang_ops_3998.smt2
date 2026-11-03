; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pr\u{1d400}ogress oncopy=""alert(1)"" contenteditable>test</progress>") (= x "<embed id=x onfocus=alert(1) type=text/html>") (= x "<center onmouseout=""alert(1)"">test</center>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9.!#$%&'*+\-=?^_`{|}~]+@[a-zA-Z0-9.-]+\.[a-z]{2,}") ((_ re.from_regex ecma2020) "[a-zA-Z s]+$"))))))
(check-sat)
