; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<a href=""data:text/html;base64,PHNjcmlwdD5hbGVydCgiSGVsbG8iKTs8L3NjcmlwdD4="">test</a>") (= x "<noscript onkeypress=""alert(1)"" contenteditable>test</noscript>") (= x "<isindex onblur=alert(1) tabindex=1 id=x></isindex><input autofocus>")))
(assert (str.in_re x (re.inter (re.diff (re.++ (str.to_re "<n") re.all) ((_ re.from_regex ecma2020) "^[^@]+@(?!(gmail|yahoo|hotmail|aol|live|msn))[^@]+\.[a-z]{2,}$")) (re.inter ((_ re.from_regex ecma2020) "^((?:19|20)\d{2})$") ((_ re.from_regex ecma2020) "^.{0,31}$")))))
(check-sat)
