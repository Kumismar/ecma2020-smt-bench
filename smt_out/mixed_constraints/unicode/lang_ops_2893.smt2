; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<header draggable=""true"" ondragleave=""alert(1)"">test</header>") (= x "<select onbeforepaste=""alert(1)"" contenteditable>test</select>") (= x "<multicol onkeypress=""alert(1)"" contenteditable>test</multicol>")))
(assert (str.in_re x (re.inter ((_ re.loop 59 65) re.allchar) (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z '\-]{2,}$") ((_ re.from_regex ecma2020 u) "^(?:\(\d{3}\)|\d{3})[- ]?\d{3}[- ]?\d{4}$")))))
(check-sat)
