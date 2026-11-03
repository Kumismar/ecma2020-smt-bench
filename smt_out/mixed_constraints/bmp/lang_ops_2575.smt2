; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<audio draggable=""true"" ondrag=""alert(1)"">test</audio>") (= x "<meter onclick=""alert(1)"">test</meter>") (= x "<article onbeforecut=""alert(1)"" contenteditable>test</article>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9\s]{1,32}$") (re.comp ((_ re.from_regex ecma2020) "[a-zA-Z0-9.-_]{2,}@[a-zA-Z0-9.-]{2,}[.]{1}[a-zA-Z]{2,}"))) ((_ re.from_regex ecma2020) "[0-9-]{0,13}"))))
(check-sat)
