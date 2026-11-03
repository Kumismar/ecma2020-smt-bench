; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<tbody oncut=""alert(1)"" contenteditable>test</tbody>") (= x "<bdi onkeypress=""alert(1)"" contenteditable>test</bdi>") (= x "<tbody draggable=""true"" ondra\u{1d400}g=""alert(1)"">test</tbody>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z \-]{2,25}$") ((_ re.from_regex ecma2020 u) "[A-Za-z][0-9][A-Za-z] ?[0-9][A-Za-z][0-9]"))))
(check-sat)
