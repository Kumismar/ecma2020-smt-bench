; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<cite oncontextmenu=""alert(1)"">test</cite>") (= x "<div draggable=""true"" contenteditable>drag me</div><nextid ondragover=alert(1) contenteditable>drop here</nextid>") (= x "<listing onkeydown=""alert(1)"" contenteditable>test</listing>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(((http|https)://)?(www.)?(youtube\.com\/(channel)/(.+)|youtube\.com\/(user)/(.+)))$") ((_ re.from_regex ecma2020 u) "^([a-zA-Z\s]|[\u{e0}-\u{fa}]|[\u{c0}-\u{da}])+$")))))
(check-sat)
