; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<del id=x tabindex=1 onfocus=alert(1)></del>") (= x "&lt;IFRAME SRC=http://ha.ckers.org/scriptlet.html &lt;") (= x "<video draggable=""true"" ondragleave=""alert(1)"">test</video>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) ".{5,9}") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^((?!gmail)(?!support)(?!marketing)(?!contact)(?!yahoo)(?!hotmail).)*$") (re.++ re.all (str.to_re "ckers") re.all)))))))
(check-sat)
