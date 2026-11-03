; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div id=""53""><xml id=""xss"" src=""test.htc""></xml>") (= x "<wbr onmouseenter=""alert(1)"">test</wbr>") (= x "<ul onbeforecut=""alert(1)"" contenteditable>test</ul>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "[1-5][0-9][0-9]") (re.diff ((_ re.from_regex ecma2020) "(^[A-Za-z0-9\-]+$)") (re.++ re.all (str.to_re "</ul>")))) (re.comp ((_ re.from_regex ecma2020) "(.+)@(.+)\.(.+)")))))
(check-sat)
