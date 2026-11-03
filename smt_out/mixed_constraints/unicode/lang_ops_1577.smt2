; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<a onblur=alert(1) tabindex=1 id=x></a><input autofocus>") (= x "&lt;DIV STYLE=\""background-image&#58; url(javascript&#058;alert('XSS'))\""&gt;") (= x "<div draggable=""true"" contenteditable>drag me</div><rtc ondragover=alert(1) contenteditable>drop here</rtc>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^(?=.*[0123456789])(?=.*[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ]).{8,}$") (re.inter ((_ re.from_regex ecma2020 u) "^\+?[0-9]{8,14}$") (re.++ (str.to_re "<a") re.all)))))
(check-sat)
