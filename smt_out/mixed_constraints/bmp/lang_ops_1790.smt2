; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x """><img src=x onerror=javascript:alert((""1""))>") (= x "<textarea draggable=""true"" ondragstart=""alert(1)"">test</textarea>") (= x "<th id=x tabindex=1 ondeactivate=alert(1)></th><input id=y autofocus>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[1-9][0-9]{3}\s?([a-zA-Z]{2})?$") ((_ re.from_regex ecma2020) "[A-Z|a-z|\s-]{2,}")))))
(check-sat)
