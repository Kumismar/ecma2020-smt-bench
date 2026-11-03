; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sup onbeforecut=""alert(1)"" contenteditable>test</su\u{1f4a9}p>") (= x "<area draggable=""true"" ondragend=""alert(1)"">test</area>") (= x "<div draggable=""true"" contenteditable>drag me</div><hgroup ondragover=alert(1) contenteditable>drop here</hgroup>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z .]+$") ((_ re.from_regex ecma2020 u) ".{6,65}")))))
(check-sat)
