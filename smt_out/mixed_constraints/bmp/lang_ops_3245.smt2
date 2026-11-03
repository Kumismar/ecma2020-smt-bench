; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<form onreset=alert(1)><input type=reset>") (= x "<image onpaste=""alert(1)"" contenteditable>test</image>") (= x "<article onbeforecut=""alert(1)"" contenteditable>test</article>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z0-9 '.]+$") (re.comp ((_ re.from_regex ecma2020) "^[276][0-9]{7}")))))
(check-sat)
