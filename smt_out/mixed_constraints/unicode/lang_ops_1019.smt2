; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<command onclick=""alert(1)"">test</command>") (= x "<applet ondblclick=""alert(1)"">test</applet>") (= x "<tr draggable=""true"" ondragend=""alert(1)"">test</tr>")))
(assert (not (str.in_re x (re.comp (re.inter (re.union ((_ re.from_regex ecma2020 u) "^1\d{10}$|^(0\d{2,3}-?|\(0\d{2,3}\))?[1-9]\d{4,7}(-\d{1,8})?$") ((_ re.from_regex ecma2020 u) "^[\+]?[0-9]{0,3}[(]?[0-9]{0,5}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{0,6}$")) (re.++ re.all (str.to_re """ale") re.all))))))
(check-sat)
