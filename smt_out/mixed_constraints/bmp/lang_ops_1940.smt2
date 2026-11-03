; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noscript onbeforecopy=""alert(1)"" contenteditable>test</noscript>") (= x "<IMG SRC= onmouseover=""alert('xxs')"">") (= x "<img \x11src=x onerror=""javascript:alert(1)"">")))
(assert (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "^[a-zA-Z0-9_-]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$") ((_ re.from_regex ecma2020) "^\S+@(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,6})$")) (re.comp ((_ re.from_regex ecma2020) "^[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+(?: +[A-Za-z0-9$&+,:;=?@#|'<>.^*()%!-_]+)*$"))))))
(check-sat)
