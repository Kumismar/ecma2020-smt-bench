; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<listing oncopy=""alert(1)"" contenteditable>test</listing>") (= x "<col onmouseover=""alert\u{1d400}(1)"">test</col>") (= x "<div draggable=""true"" contenteditable>drag me</div><area ondragover=alert(1) contenteditable>drop here</area>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[0-1][0-9]|[1-9]") ((_ re.from_regex ecma2020 u) "^[0-9.]*$"))))))
(check-sat)
