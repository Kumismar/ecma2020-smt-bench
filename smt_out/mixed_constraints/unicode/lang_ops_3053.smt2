; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<summary onpaste=""alert(1)"" contenteditable>test</summary>") (= x "<em onfocusout=alert(1) tabindex=1 id=x></em><input autofocus>") (= x "<strong oncontextmenu=""alert(1)"">test</strong>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "[0-9]{1,3}") ((_ re.from_regex ecma2020 u) ".+\.[a-zA-Z]+$"))))
(check-sat)
