; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<object data=data:text/html;base64,PHN2Zy9vbmxvYWQ9YWxlcnQoMik+></object>?") (= x "<div draggable=""true"" contenteditable>drag me</div><ol ondragover=alert(1) contenteditable>drop here</ol>") (= x "<div oncopy=""alert(1)"" contenteditable>test</div>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "(([x-zX-Z]{1})([-]?)(\d{7})([-]?)([a-zA-Z]{1}))|((\d{8})([-]?)([a-zA-Z]{1}))") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{5c}u4e00-\u{5c}u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$"))))
(check-sat)
