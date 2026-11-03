; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<abbr ondblclick=""alert(1)"">test</abbr>") (= x "<hgroup id=x tabindex=1 onbeforedeactivate=alert(1)></hgroup><input \u{1f600}autofocus>") (= x "<isindex onkeyup=""alert(1)"" contenteditable>test</isindex>")))
(assert (str.in_re x (re.diff (re.diff ((_ re.from_regex ecma2020 u) "15$") ((_ re.from_regex ecma2020 u) "^[a-z A-Z ]*$")) ((_ re.from_regex ecma2020 u) "^[_A-zA-z- ]{1,}$"))))
(check-sat)
