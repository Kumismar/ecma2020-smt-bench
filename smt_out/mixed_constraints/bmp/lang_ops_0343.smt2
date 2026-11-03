; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<tr id=x tabindex=1 onfocus=alert(1)></tr>") (= x "<// style=x:expre\u{1f600}ssion\28javascript:alert(1)\29>") (= x "<rb onpaste=""alert(1)"" contenteditable>test</rb>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^(?!.*@).*$") (re.comp ((_ re.from_regex ecma2020) "^((\d{1,2}|1\d\d|2[0-4]\d|25[0-5])\.){3}(\d{1,2}|1\d\d|2[0-4]\d|25[0-5])$"))))))
(check-sat)
