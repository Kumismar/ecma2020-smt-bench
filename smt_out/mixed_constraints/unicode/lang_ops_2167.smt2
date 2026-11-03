; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdo draggable=""true"" ondragenter=""alert(1)"">test</bdo>") (= x "<font onbeforecopy=""alert(1)"" contenteditable>test</font>") (= x "<rtc id=x tabindex=1 onbeforedeactivate=alert(1)></rtc><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._%+-]+@(?!cancaonova.pt)[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$") ((_ re.from_regex ecma2020 u) "^[A-\u{17e}0-9. _-]{5,}$")))))
(check-sat)
