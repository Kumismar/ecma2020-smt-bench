; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><title ondrop=alert(1) contenteditable>drop here</title>") (= x "%2BACIAPgA8-script%2BAD4-alert%28document.location%29%2BADw-%2Fscript%2BAD4APAAi-") (= x "<mark draggable=""true"" ondrag=""alert(1)"">test</mark>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "(\+[\d]{1,5}|0)?[6-9]\d{9}$") (re.comp ((_ re.from_regex ecma2020) "^(?=.*\d)(?=.*[a-zA-Z]).{8,}")))))
(check-sat)
