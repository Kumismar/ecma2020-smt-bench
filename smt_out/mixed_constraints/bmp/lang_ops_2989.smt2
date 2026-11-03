; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<b ondblclick=""alert(1)"">test</b>") (= x "<dir onmousedown=""alert(1)"">test</dir>") (= x "<shadow id=x tabindex=1 onfocusin=alert(1)></shadow>")))
(assert (str.in_re x (re.inter (re.inter (re.diff ((_ re.from_regex ecma2020) ".{6,15}") ((_ re.from_regex ecma2020) "^.{6,12}$")) (re.++ (str.to_re "<d") re.all)) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.#\s]+$"))))
(check-sat)
