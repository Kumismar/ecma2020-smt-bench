; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<dt onbeforep\u{1d400}aste=""alert(1)"" contenteditable>test</dt>") (= x "<br id=x tabindex=1 ondeactivate=alert(1)></br><input id=y autofocus>") (= x "<ol onpaste=""alert(1)"" contenteditable>test</ol>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9_ -\u{d6}\u{dc}\u{e4}\u{f6}\u{fc}\u{df}]{3,60}$") (re.union ((_ re.from_regex ecma2020 u) ".{100,100}") ((_ re.from_regex ecma2020 u) "^[A-Z]{2}$"))))))
(check-sat)
