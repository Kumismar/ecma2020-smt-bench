; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<var onbeforecut=""alert(1)"" contenteditable>test</var>") (= x "<pr\u{1d400}ogress oncopy=""alert(1)"" contenteditable>test</progress>") (= x "<center onbeforecut=""alert(1)"" contenteditable>test</center>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) ".{0}.{3,}") ((_ re.from_regex ecma2020 u) "^[0-9a-zA-Z\._-]*@[a-zA-Z]*\.[a-zA-Z]{2,}(\.[a-zA-z]{2})?$")))))
(check-sat)
