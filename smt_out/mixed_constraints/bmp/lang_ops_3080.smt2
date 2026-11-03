; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<image xlink:href=""data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' onload='alert(88)'%3E%3C/svg%3E""/>") (= x "<fieldset onmouseout=""alert(1)"">test</fieldset>") (= x "<menu id=x tabindex=1 ondeactivate=alert(1)></menu><input id=y autofocus>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020) "^[A-Za-z0-9._%+-]+@(?:[A-Za-z0-9-]+\.)+[A-Za-z]{2,10}$") (re.diff ((_ re.from_regex ecma2020) "^[0-9a-zA-Z_ -]{1,20}") ((_ re.from_regex ecma2020) "^[0-9-+()/ ]*$"))))))
(check-sat)
