; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<select id=x tabindex=1 ondeactivate=alert(1)></select><input id=y autofocus>") (= x "<svg><select onload=alert(1)></select>") (= x "<bgsound onmouseout=""alert(1)"">test</bgsound>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{3}|[0-9]{1,3})(\]?)$") (re.comp ((_ re.from_regex ecma2020 u) "^(00?|\+?)(\d{2,3})?\d{9}$"))) (re.++ re.all (str.to_re "elect") re.all)))))
(check-sat)
