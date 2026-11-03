; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<basefont draggable=""true"" ondragend=""alert(1)"">test</basefont>") (= x "<;IMG SRC=';vbscript:msgbox("";XSS"";)';>;") (= x "<col oncut=""alert(1)"" contenteditable>test</col>")))
(assert (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]{2,}\.[a-zA-Z]{2,}$") ((_ re.from_regex ecma2020) "[a-zA-Z]{3,10}$")) ((_ re.from_regex ecma2020) ".{0}|.{10}|.{13}"))))
(check-sat)
