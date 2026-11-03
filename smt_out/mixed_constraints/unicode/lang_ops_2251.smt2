; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<button oncopy=""alert(1)"" contenteditable>test</button>") (= x "<label draggable=""true"" ondragstart=""alert(1)"">test</label>") (= x "<details id=x tabindex=1 onfocusin=alert(1)></details>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-])+$") ((_ re.from_regex ecma2020 u) "^[/+0-9]+$"))))
(check-sat)
