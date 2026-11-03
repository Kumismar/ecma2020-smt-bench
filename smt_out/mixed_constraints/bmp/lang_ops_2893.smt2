; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<content onkeyup=""alert(1)"" contenteditable>test</content>") (= x "<img src onerror /"" '""= alt=javascript:alert(1)//"">") (= x "<rt onpaste=""alert(1)"" contenteditable>test</rt>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "(?=.*[A-Z])(?=.*[0-9])(?=.*[a-z]).{8,25}") (re.comp ((_ re.from_regex ecma2020) "[0-9\s-]{2,2}"))) (re.++ (str.to_re "<co") re.all))))
(check-sat)
