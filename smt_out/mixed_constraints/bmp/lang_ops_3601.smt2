; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<blink onmouseenter=""alert(1)"">test</blink>") (= x "<image oncontextmenu=""alert(1)"">test</image>") (= x "<marquee onstart=alert(1)>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^(0|86|17951)?1[0-9]{10}") (re.union ((_ re.from_regex ecma2020) "[a-zA-Z ]{3,30}") (re.comp (re.inter (re.++ re.all (str.to_re "mousee") re.all) ((_ re.from_regex ecma2020) "[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?\.)+[A-Za-z0-9](?:[A-Za-z0-9-]*[A-Za-z0-9])?")))))))
(check-sat)
