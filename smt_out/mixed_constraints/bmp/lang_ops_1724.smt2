; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<object oncontextmenu=""alert(1)"">test</object>") (= x """`'><script>\xEF\xBF\xBEjavascript:alert(1)</script>") (= x "<p oncopy=""alert(1)"" contenteditable>test</p>")))
(assert (not (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020) "^(.)+@[A-Za-z0-9]([A-Za-z0-9\.-]*[A-Za-z0-9])?\.[A-Za-z]{1,13}$") ((_ re.from_regex ecma2020) "^\d{4}\s\d{4}\s\d{4}$"))))))
(check-sat)
