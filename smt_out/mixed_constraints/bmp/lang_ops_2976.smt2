; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<script onblur=alert(1) tabindex=1 id=x></script><input autofocus>") (= x "<base onkeypress=""alert(1)"" contenteditable>test</base>") (= x "<strong ondblclick=""alert(1)"">test</strong>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^[0]*[1-9][0-9]{0,5}$") ((_ re.from_regex ecma2020) "^[1]{1}[-]0?[0-9]{5,15}$")) (re.comp ((_ re.from_regex ecma2020) "^[6-9]\d*|0$"))))))
(check-sat)
