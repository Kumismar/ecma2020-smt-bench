; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<multicol id=x tabindex=1 onactivate=alert(1)></multicol>") (= x "<u id=x tabindex=1 onfocusin=alert(1)></u>") (= x "<div draggable=""true"" contenteditable>drag me</div><svg ondrop=alert(1) contenteditable>drop here</svg>")))
(assert (str.in_re x (re.comp (re.inter (re.inter ((_ re.from_regex ecma2020) "(^(([A-Z&\u{e2}\u{96}\u{92}]|[a-z&]|\s){1})(([A-Z&\u{e2}\u{96}\u{92}]|[a-z&]){3})([0-9]{6})((([A-Z&\u{e2}\u{96}\u{92}]|[a-z&]|[0-9]){3})))|(^(([A-Z&\u{e2}\u{96}\u{92}]|[a-z&]){3})([0-9]{6})((([A-Z&\u{e2}\u{96}\u{92}]|[a-z&]|[0-9]){3})))") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\s,.'-]{3,}$"))) ((_ re.from_regex ecma2020) "^[^\/&>]+$")))))
(check-sat)
