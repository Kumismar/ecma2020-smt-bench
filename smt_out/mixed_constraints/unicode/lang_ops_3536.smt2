; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<col draggable=""true"" ondragleave=""alert(1)"">test</col>") (= x "<div draggable=""true"" contenteditable>drag me</div><i ondrag\u{1f4a9}over=alert(1) contenteditable>drop here</i>") (= x "<nav onkeydown=""alert(1)"" contenteditable>test</nav>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^([1-9]{2}|[0-9][1-9]|[1-9][0-9])[0-9]{3}$") (re.comp ((_ re.from_regex ecma2020 u) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z.]{2,}$")))))
(check-sat)
