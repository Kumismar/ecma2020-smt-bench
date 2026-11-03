; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<pre draggable=""true"" ondragleave=""alert(1)"">test</pre>") (= x "\u{20000}&LT;") (= x "<embed onfocusout=alert(1) tabindex=1 id=x></embed><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[^\s]+.*$") ((_ re.from_regex ecma2020) "^\+?\d{9,20}")))))
(check-sat)
