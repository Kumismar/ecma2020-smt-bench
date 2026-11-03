; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<!--<img src=""--><img src=x onerror=alert(123)//"">") (= x "<dir onbeforecut=""alert(1)"" contenteditable>test</dir>") (= x "<x contenteditable onkeydown=alert(1)>press any key!")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\+?\d+$") (re.comp ((_ re.from_regex ecma2020 u) "[1-8][0-9]{2}")))))
(check-sat)
