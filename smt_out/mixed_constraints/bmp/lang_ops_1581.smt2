; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><details ondrop=alert(1) conte\u{1d400}nteditable>drop here</detail\u{1d400}s>") (= x "<u onbeforecopy=""alert(1)"" contenteditable>test</u>") (= x "<nobr onmouseenter=""alert(1)"">test</nobr>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020) "paswd") (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z \-\.]{1,34}$") ((_ re.from_regex ecma2020) "^\+?1?\s?\([0-9]{3}\) [0-9]{3} [0-9]{4}")))))
(check-sat)
