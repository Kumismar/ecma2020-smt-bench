; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<basefont onkeydown=""alert(1)"" contenteditable>test</basefont>") (= x "<comment><img src=""</comment><img src=x onerror=javascript:alert(1))//"">") (= x "<embed onmouseenter=""alert(1)"">test</embed>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^\d{1,10}") (re.comp ((_ re.from_regex ecma2020) "^[A-Z][1-2]\d{8}$"))) ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{6,}")))))
(check-sat)
