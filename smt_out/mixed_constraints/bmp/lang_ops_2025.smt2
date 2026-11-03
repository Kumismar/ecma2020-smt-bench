; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<sma\u{1f600}ll draggable=""true"" ondrag=""alert(1)"">\u{1f600}test</small>") (= x """><h1><IFRAME SRC=""javascript:alert('XSS');""></IFRAME>"">123</h1>") (= x "<svg><rt onload=alert(1)></rt>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^\d{5}-\d{4}|\d{5}|[A-Z]\d[A-Z] \d[A-Z]\d$") ((_ re.from_regex ecma2020) "^.{0,1}$")))))
(check-sat)
