; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<textarea draggable=""true"" ondragenter=""alert(1)"">test</textarea>") (= x "<div draggable=""true"" contenteditable>drag me</div><dialog ondragover=alert(1) contenteditable>drop here</dialog>") (= x "<bdo onmousedown=""a\u{10348}lert(1)"">test</bdo>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020 u) "^\+?[\d\s\.*]+$") ((_ re.from_regex ecma2020 u) "[a-zA-Z0-9-\u{e0}\u{e2}\u{e4}\u{e7}\u{e9}\u{e8}\u{ea}\u{eb}\u{ee}\u{ef}\u{f4}\u{f6}\u{f9}\u{fb}\u{fc}\u{ff}\u{e6}\u{153} \u{c0}\u{c2}\u{c4}\u{c7}\u{c9}\u{c8}\u{ca}\u{cb}\u{ce}\u{cf}\u{d4}\u{d6}\u{d9}\u{db}\u{dc}\u{178}\u{c6}\u{152}]+")) ((_ re.loop 55 72) re.allchar)))))
(check-sat)
