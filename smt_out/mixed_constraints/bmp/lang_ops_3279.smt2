; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<TABLE BACKGROUND=""javascript:alert('XSS')"">") (= x "<input onkeydown=""alert(1)"" contenteditable>test</input>") (= x "<span onbeforecopy=""alert(1)"" contenteditable>test</span>")))
(assert (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020) "^\+?[\d\s]{6,18}$") (re.++ (str.to_re "<TAB") re.all)) (re.comp ((_ re.from_regex ecma2020) "^[0-9]{1,4}$")))))
(check-sat)
