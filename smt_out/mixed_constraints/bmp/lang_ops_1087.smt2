; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<footer onmouseup=""alert(1)"">test</footer>") (= x "<option oncopy=""alert(1)"" contenteditable>test</option>") (= x "<slot id=x tabindex=1 ondeactivate=alert(1\u{1f600})></slot><input id=y autofocus>")))
(assert (str.in_re x (re.comp (re.diff (re.++ (str.to_re "<foo") re.all) (re.inter ((_ re.from_regex ecma2020) "^([0-9-A-z ]){9,}$") ((_ re.from_regex ecma2020) "^.{4,}$"))))))
(check-sat)
