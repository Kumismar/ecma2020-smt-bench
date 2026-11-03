; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<plaintext id=x tabindex=1 onfocusin=alert(1)></plaintext>") (= x "<u onclick=""alert(1)"">test</u>") (= x "<tr draggable=""true"" ondrag=""alert(1)"">test</tr>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020 u) "(?=^.{8,}$)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).*$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[0-9]{2}.[0-9A-Za-z]{4,8}$") ((_ re.from_regex ecma2020 u) "[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([_\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})")))) (re.++ re.all (str.to_re "id=x ") re.all))))
(check-sat)
