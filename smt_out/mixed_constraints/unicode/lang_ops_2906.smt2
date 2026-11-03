; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dt onmousedown=""alert(1)"">test</dt>") (= x "<menuitem onblur=alert(1) tabindex=1 id=x></menuitem><input autofocus>") (= x "<sup draggable=""true"" ondragenter=""alert(1)"">test</sup>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(\+420|\+421|00420|00421)?[ ]*[0-9]{3}[ ]*[0-9]{3}[ ]*[0-9]{3}$") (re.inter (re.++ re.all (str.to_re "dex=1 ") re.all) ((_ re.from_regex ecma2020 u) "^[A-Za-z. ]+$"))))))
(check-sat)
