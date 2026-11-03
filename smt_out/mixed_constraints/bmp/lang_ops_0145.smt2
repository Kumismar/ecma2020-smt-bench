; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<thead onmouseup=""alert(1)"">test</thead>") (= x "<rtc onbeforecut=""alert(1)"" contenteditable>test</rtc>") (= x "<iframe  src=""data:text/html,%3C%73%63%72%69%70%74%3E%61%6C%65%72%74%28%31%29%3C%2F%73%63%72%69%70%74%3E""></iframe>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-z\u{c1}-\u{ff}\s]+$") (re.comp (re.++ re.all (str.to_re "t") re.all))) ((_ re.from_regex ecma2020) "^([ \u{5c}u00c0-\u{5c}u01ffa-zA-Z'\-]){2,50}$"))))
(check-sat)
