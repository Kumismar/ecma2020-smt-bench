; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<acronym id=x tabindex=1 ondeactivate=alert(1)></acronym><input id=y autofocus>") (= x "<font draggable=""true"" ondragenter=""al\u{1f600}ert(1)"">test</font>\u{20000}") (= x "<dl onbeforecut=""alert(1)"" contenteditable>test</dl>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^\d{1,7}-\d{2}-\d$") (re.comp ((_ re.from_regex ecma2020 u) "[a-z A-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{b4} \u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{3,40}"))))))
(check-sat)
