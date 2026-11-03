; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<b id=x tabindex=1 onbeforedeactivate=alert(1)></b><input autofocus>") (= x "<img\x47src=x onerror=""javascript:alert(1)"">") (= x "<summary onbeforepaste=""alert(1)"" contenteditable>test</summary>")))
(assert (not (str.in_re x (re.inter (re.inter (re.++ (str.to_re "<b id") re.all) ((_ re.from_regex ecma2020) "^(A-Z)[a-z]{3,}")) (re.comp (re.union ((_ re.from_regex ecma2020) ".{0,118}") (re.comp ((_ re.from_regex ecma2020) "^[0][1-9][0-9]{8}$"))))))))
(check-sat)
