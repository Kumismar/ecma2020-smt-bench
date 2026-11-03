; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<caption draggable=""true"" ondragleave=""alert(1)"">test</caption>") (= x "<div draggable=""true"" contenteditable>drag me</div><map ondragover=alert(1) contenteditable>drop here</map>") (= x "<rt draggable=""true"" ondrag=""alert(1)"">test</rt>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "[A-Za-z \u{e7}\u{11f}\u{131}i\u{f6}\u{15f}\u{fc}\u{c7}\u{11e}\u{130}\u{d6}\u{15e}\u{dc}]{3,}") (re.comp ((_ re.loop 61 69) re.allchar))) ((_ re.from_regex ecma2020) "([0-9]{8,14})")))))
(check-sat)
