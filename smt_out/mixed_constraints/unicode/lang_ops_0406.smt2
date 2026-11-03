; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<img onmouseup=""alert(1)"">test</img>") (= x "<div draggable=""true"" contenteditable>drag me</div><hr ondragover=alert(1) contenteditable>drop here</hr>") (= x "<meter oncontextmenu=""alert(1)"">test</meter>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\d{11}$") ((_ re.from_regex ecma2020 u) "^[-\w.]+@([A-z0-9][-A-z0-9]+\.)+[A-z]{2,4}$")))))
(check-sat)
