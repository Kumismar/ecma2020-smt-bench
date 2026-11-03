; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<param onkeypress=""alert(1)"" contenteditable>test</param>") (= x "<acronym onclick=""alert(1)"">test</acronym>") (= x "<noframes onfocusout=alert(1) tabindex=1 id=x></noframes><input autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[\w ]+$") ((_ re.from_regex ecma2020) "^[a-zA-Z]([a-zA-Z0-9_-]{0,29})$"))))
(check-sat)
