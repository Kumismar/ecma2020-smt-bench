; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<code onkeypress=""alert(1)"" contenteditable>test</co\u{1f600}de\u{10348}>") (= x "<input onkeyup=""alert(1)"" contenteditable>test</input>") (= x "<div draggable=""true"" contenteditable>drag me</div><tbody ondrop=alert(1) contenteditable>drop here</tbody>")))
(assert (not (str.in_re x (re.inter ((_ re.loop 49 62) re.allchar) (re.union ((_ re.from_regex ecma2020) "^1(3|4|5|7|8)d{9}$") (re.comp ((_ re.from_regex ecma2020) "^[6-9]\d{9}")))))))
(check-sat)
