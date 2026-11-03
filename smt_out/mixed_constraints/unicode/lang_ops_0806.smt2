; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<div onbeforecopy=""alert(1)"" contenteditable>test</div>") (= x """><script>alert('XSS')</script>") (= x "<ins onclick=""alert(1)"">test</ins>")))
(assert (str.in_re x (re.diff (re.inter (re.++ (str.to_re "<ins ") re.all) (re.comp ((_ re.from_regex ecma2020 u) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){2,50}$"))) ((_ re.from_regex ecma2020 u) "^[-\w.]+@{1}[-a-z0-9]+[.]{1}[a-z]{2,5}$"))))
(check-sat)
