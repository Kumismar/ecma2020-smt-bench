; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<select draggable=""true"" ondragenter=""alert(1)"">test</select>") (= x "<cite onblur=alert(1) tabindex=1 id=x></cite><input autofocus>") (= x "<script src=//brutelogic.com.br/1.js>")))
(assert (str.in_re x (re.diff (re.union ((_ re.loop 57 64) re.allchar) ((_ re.from_regex ecma2020 u) "^[0-9 () + -]{1,20}$")) ((_ re.from_regex ecma2020 u) "^[^-].*@\S+\.\S+$"))))
(check-sat)
