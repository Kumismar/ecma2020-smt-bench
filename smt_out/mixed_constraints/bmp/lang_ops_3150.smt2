; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><map ondrop=alert(1) contenteditable>drop here</map>") (= x "<dialog onmouseleave=""alert(1)"">test</dialog>") (= x "<canvas id=x tabindex=1 onfocusin=alert(1)></canvas>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^([0-9-]){11,}$") (re.comp ((_ re.from_regex ecma2020) "(?=.*[A-Za-z]{2})[A-Za-z\s]{2,25}"))))))
(check-sat)
