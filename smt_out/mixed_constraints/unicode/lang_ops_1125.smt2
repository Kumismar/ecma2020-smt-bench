; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "&#060") (= x "<;SCRIPT SRC=http://ha.ckers.org/xss.js") (= x "<table draggable=""true"" ondrag\u{20000}start=""alert(1)"">test</t\u{1f600}able>")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z._\-]+@[0-9a-zA-Z._\-]+$") ((_ re.from_regex ecma2020 u) "(((0)[1-9]{2}[0-9][-]?[1-9][0-9]{5})|((\+31|0|0031)[1-9][0-9][-]?[1-9][0-9]{6})|(((\+31|0|0031)6){1}[1-9]{1}[0-9]{7}))$")))))
(check-sat)
