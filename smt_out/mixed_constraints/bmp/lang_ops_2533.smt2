; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><tbody ondrop=alert(1) contenteditable>drop here</tbody>") (= x "<track onclick=""alert(1)"">test</track>") (= x "<br draggable=""true"" ondragstart=""alert(1)"">test</br>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}|\u{3000}]*$") ((_ re.from_regex ecma2020) "[a-zA-Z0-9. \-]{2,64}"))))))
(check-sat)
