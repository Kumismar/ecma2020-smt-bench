; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<img\x32src=x onerror=""javascript:alert(1)"">") (= x "<ul onpaste=""alert(1)"" contenteditable>test</ul>") (= x "<basefont id=x tabindex=1 ondeactivate=alert(1)></basefont><input id=y autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z ,.-]+$") (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z ]*$") ((_ re.from_regex ecma2020 u) "^([A-Za-z0-9_\-.+])+@([A-Za-z0-9_\-.])+\.([A-Za-z]{2,})$")))))
(check-sat)
