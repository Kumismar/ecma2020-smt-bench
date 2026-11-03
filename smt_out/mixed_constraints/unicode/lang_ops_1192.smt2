; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div id=""113""><div id=""x"">XXX</div>") (= x "<shadow draggable=""true"" ondragstart=""alert(1)"">test</shadow>") (= x "<SCRIPT SRC=//ha.ckers.org/.j>")))
(assert (not (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._-]+@[a-z0-9.-]{2,}[.][a-z]{2,3}$") (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(https:\/\/)?[a-zA-Z0-9-]*.myshopify.com\/?$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._+-]+\x40[a-zA-Z0-9.-]+\.[a-zA-Z]{2,20}$")))) (re.++ (str.to_re "<SCRI") re.all))))))
(check-sat)
