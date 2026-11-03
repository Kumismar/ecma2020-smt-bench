; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<keygen oncopy=""alert(1)"" contenteditable>test</keygen>") (= x "<meta http-equiv=""refresh"" content=""0;url=javascript:confirm(1)"">") (= x "<h1 id=x tabindex=1 onbeforedeactivate=alert(1)></h1><inp\u{1d400}ut \u{1f600}autofocus>")))
(assert (str.in_re x (re.union (re.inter ((_ re.from_regex ecma2020) "(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,20}") (re.++ re.all (str.to_re "a") re.all)) ((_ re.from_regex ecma2020) "^[A-Za-z]+$"))))
(check-sat)
