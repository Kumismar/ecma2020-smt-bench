; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<object onkeydown=""alert(1)"" contenteditable>test</object>") (= x "<html onMouseEnter html onMouseEnter=""javascript:parent.javascript:alert(1)""></html onMouseEnter>") (= x "<object id=x tabindex=1 ondeactivate=alert(1)></object><input id=y autofocus>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "^([_A-z0-9 ]){5,}$") ((_ re.from_regex ecma2020 u) "\d{1,3}(\.\d{1,2})?$")) ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{e9}\u{e0}\u{e8}\u{c9}\u{c8}\u{df}]*$")))))
(check-sat)
