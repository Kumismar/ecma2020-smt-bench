; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><output ondrop=alert(1) contenteditable>drop here</output>") (= x "<img src=""javascript:alert('XSS')"">") (= x "alert&#x28;1&#x29")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^[\w.%+-_]+@[\w.-]+\.[\w]{2,6}$") (re.comp ((_ re.from_regex ecma2020 u) "\d{3}-\d{4}")))))
(check-sat)
