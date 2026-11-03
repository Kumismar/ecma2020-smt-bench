; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sup id=x tabindex=1 onbeforedeactivate=alert(1)></sup><input autofocus>") (= x "<dfn onmouseup=""alert(1)"">test</dfn>") (= x "<area onkeydown=""alert(1)"" contenteditable>test</area>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9 '.]+$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9\.\-_, ]{6,900}")) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.#\s]+$")))))
(check-sat)
