; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<tt onclick=""alert(1)"">test</tt>") (= x "<col onkeydown=""alert(1)"" contenteditable>test</col>") (= x "<header onmouseover=""alert(1)"">test</header>")))
(assert (not (str.in_re x (re.diff (re.union ((_ re.from_regex ecma2020 u) "\d[0-9]{5}") (re.comp (re.++ re.all (str.to_re "eader") re.all))) (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z]*$") ((_ re.from_regex ecma2020 u) "^1[1-9]\d{9}$"))))))
(check-sat)
