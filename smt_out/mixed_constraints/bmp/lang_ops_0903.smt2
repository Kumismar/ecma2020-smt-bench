; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<picture oncontextmenu=""alert(1)"">test</picture>") (= x "<div draggable=""true"" contenteditable>drag me</div><mark ondrop=alert(1) contenteditable>drop here</mark>") (= x "<html onmous\u{20000}eover=""alert(1)"">t\u{20000}est</html>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "[A-Za-z,&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Za-z,0-9][A-Za-z,0-9][0-9,Aa]$") ((_ re.loop 33 48) re.allchar)) ((_ re.from_regex ecma2020) "^[a-z]{2,4}$"))))
(check-sat)
