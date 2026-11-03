; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><output ondragover=alert(1) contenteditable>drop here</output>") (= x "<iframe/src \/\/onload = prompt(1)") (= x "<dir onmousedown=""alert(1)"">test</dir>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^.{6,20}$") (re.diff ((_ re.loop 36 48) re.allchar) ((_ re.from_regex ecma2020) ".{0,2000}")))))
(check-sat)
