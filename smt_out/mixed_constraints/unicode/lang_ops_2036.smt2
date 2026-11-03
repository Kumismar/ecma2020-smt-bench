; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<center id=x tabindex=1 onfocus=alert(1)></center>") (= x "<select oncopy=""alert(1)"" contenteditable>test</select>") (= x "<noframes onmousedown=""alert(1)"">test</noframes>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[\+\-0-9]*$") ((_ re.from_regex ecma2020 u) "^((?!(gmail.com|hotmail.com|yahoo.com|yandex.ru|hey.com|aol.com|mailinator.com|protonmail.com)).)*$"))))
(check-sat)
