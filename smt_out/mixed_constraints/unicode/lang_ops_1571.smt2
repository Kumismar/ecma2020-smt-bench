; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<tfoot onfocusout=alert(1) tabindex=1 id=x></tfoot><input autofocus>") (= x "<div id=""116""><div id=""x"">x</div>") (= x "<th id=x tabindex=1 onfocusin=alert(1)></th>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[_\.0-9a-zA-Z-]+@([0-9a-zA-Z-]+\.)+[a-zA-Z]{2,3}$") (re.inter (re.++ re.all (str.to_re "th>")) ((_ re.from_regex ecma2020 u) "^[a-zA-Zs ]+$")))))
(check-sat)
