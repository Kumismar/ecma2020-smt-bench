; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onmousedown=""alert(String.fromCharCode(88,83,83))"">") (= x "<div draggable=""true"" contenteditable>drag me</div><span ondragover=alert(1) contenteditable>drop here</span>") (= x "<header id=x tab\u{1f4a9}index=1\u{10348} onbeforeactivate=alert(1)></header>")))
(assert (not (str.in_re x (re.comp (re.inter (re.diff (re.++ (str.to_re "<IMG S") re.all) ((_ re.from_regex ecma2020) "^([0-9]{8,12})+$")) ((_ re.from_regex ecma2020) "^...*"))))))
(check-sat)
