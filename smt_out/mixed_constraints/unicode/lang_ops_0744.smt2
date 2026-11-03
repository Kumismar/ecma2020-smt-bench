; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<thead draggable=""true"" ondragenter=""alert(1)"">test</thead>") (= x "<frameset><frame id=x onfocusin=alert(1)>") (= x "<svg><del onload=alert(1)></del>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[0-9\-\+\(\) ]{8,18}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{5}[0-9]{4}[a-zA-Z]{1}$")))))
(check-sat)
