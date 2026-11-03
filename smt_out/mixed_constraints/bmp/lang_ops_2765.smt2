; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<sup oncut=\u{1d400}""al\u{1d400}ert(1)"" contenteditable>test</sup>") (= x "<fieldset onmouseenter=""alert(1)"">test</fieldset>") (= x "<style onmouseover=""alert(1)"">test<\u{1f4a9}/style>")))
(assert (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re "e>")) (re.comp ((_ re.from_regex ecma2020) "^.{9,10}$"))) (re.inter ((_ re.from_regex ecma2020) "^([+])?([^\\d]?\\d){5,18}$") (re.comp ((_ re.from_regex ecma2020) "(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])/(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])/(?:30))|(?:(?:0[13578]|1[02])-31))"))))))
(check-sat)
