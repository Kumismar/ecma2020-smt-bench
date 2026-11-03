; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<frame onmouseover=""alert(1)"">test</frame>") (= x "<title draggable=""true"" ondrag=""alert(1)"">test</title>") (= x "<div draggable=""true"" contenteditable>drag me</div><small ondrop=alert(1) contenteditable>drop here</small>")))
(assert (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^([6789]{1})+([0-9]{9})+") (re.comp ((_ re.from_regex ecma2020 u) "^\+380-\d{2}-\d{3}-\d{2}-\d{2}")))))
(check-sat)
