; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><tr ondrop=alert(1) contenteditable>drop here</tr>") (= x "<progress onmousedown=""alert(1)"">test</progress>") (= x "<ScRipT 5-0*3+9\u{10348}/3=>prompt(1)</ScRipT giveanswerhere=?")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[A-Za-z0-9]{7,13}") (re.union ((_ re.from_regex ecma2020 u) "^[a-zA-Z][a-zA-Z\u{415}\u{4b9}\u{413}\u{458}\u{413}\u{b6}\u{414}\u{4b1}\u{414}\u{4b9}\u{413}\u{a7}\u{415}\u{4bb}\u{413}\u{4a3}\u{413}\u{2013}\u{414}\u{b0}\u{414}\u{4bb}\u{413}\u{4ae}0-9-_\.]{1,15}$") (re.comp ((_ re.loop 49 59) re.allchar))))))
(check-sat)
