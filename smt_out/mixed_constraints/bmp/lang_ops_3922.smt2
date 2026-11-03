; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x """'`><\x3Cimg src=xxx:x onerror=javascript:alert(1)>") (= x "<canvas onkeydown=""alert(1)"" contenteditable>test</canvas>") (= x "<sup onbeforepaste=""alert(1)"" contenteditable>test</sup>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[a-zA-Z0-9._%+-]+@[a-zA-z0-9.-]+\.[a-zA-z]{2,4}$") ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,9}$"))))))
(check-sat)
