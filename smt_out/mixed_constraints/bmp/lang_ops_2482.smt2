; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<div draggable=""true"" contenteditable>drag me</div><rtc ondragover=alert(1) contenteditable>drop here</rtc>") (= x "<cite id=x tabindex=1 onfocus=alert(1)></cite>") (= x "<x%2Fonxxx=1")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "(?=^.{8,}$)(((?=.*[a-z])(?=.*[A-Z])(?=.*\d))|((?=.*[a-z])(?=.*[A-Z])(?=.*[!@#$%^*()]+))|((?=.*[a-z])(?=.*\d)(?=.*[!@#$%^*()]+))|((?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^*()]+))).*$") ((_ re.from_regex ecma2020) "^(\d{3}-\d{7}-\d{7})$")) ((_ re.from_regex ecma2020) "^[1-9][0-9]{3,7}"))))
(check-sat)
