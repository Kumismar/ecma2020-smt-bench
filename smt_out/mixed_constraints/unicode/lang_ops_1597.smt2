; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dialog\u{10348} onkeydown=""alert(1)"" contenteditable>test</dialog>") (= x "<col onmouseenter=""alert(1)"">test</col>") (= x "<address onfocusout=alert(1) tabindex=1 id=x></address><input autofocus>")))
(assert (not (str.in_re x (re.inter ((_ re.loop 65 78) re.allchar) (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z][\w\+.-]*[a-zA-Z0-9]@[a-zA-Z0-9][\w\.-]*[a-zA-Z0-9]\.[a-zA-Z][a-zA-Z\.]*[a-zA-Z]$") ((_ re.from_regex ecma2020 u) "^\+?(?:[0-9]|-| )+$")) ((_ re.from_regex ecma2020 u) "[0-9 -()]+"))))))
(check-sat)
