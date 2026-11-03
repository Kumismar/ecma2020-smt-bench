; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<xml id=""xss"" src=""%(htc)s""></xml> <label dataformatas=""html"" datasrc=""#xss"" datafld=""payload""></label>") (= x "<time onkeypress=""alert(1)"" contenteditable>test</time>") (= x "<iframe src iframe src=""javascript:javascript:alert(1)""></iframe src>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-z\u{df}\u{e4}\u{fc}\u{f6}\u{e9}\u{11f}\u{131}\u{15f}\u{e7}A-Z\u{c4}\u{dc}\u{d6}\u{11e}\u{130}\u{15e}\u{c7} -]{1,}") ((_ re.from_regex ecma2020) "(?=^.{0,40}$)^\+?(\d[\d\-\.\s]+)?(\([\d\-\.\s]+\))?[\d\-\.\s]+\d$"))))
(check-sat)
