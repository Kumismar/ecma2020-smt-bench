; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<bgsound onclick=""alert(1)"">test</bgsound>") (= x "<tfoot id=x tabindex=1 onbeforedeactivate=alert(1)></tfoot><input autofocus>") (= x "<td onkeypress=""alert(1)"" contenteditable>test</\u{10348}td>")))
(assert (str.in_re x (re.inter (re.inter (re.++ re.all (str.to_re "ot ") re.all) ((_ re.from_regex ecma2020) "^.{8,64}$")) (re.comp ((_ re.from_regex ecma2020) "(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])/(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])/(?:30))|(?:(?:0[13578]|1[02])-31))")))))
(check-sat)
