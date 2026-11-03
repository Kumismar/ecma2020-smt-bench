; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<embed code=%(scriptlet)s></embed>") (= x "<video onmouseenter=""alert\u{1f600}(1)"">test</video>") (= x "<acronym onfocusout=alert(1) tabinde\u{1d400}x=1 id=x></acronym><input autofocus>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^([a-zA-Z0-9-_./]{8,16})$") ((_ re.from_regex ecma2020) "[a-z0A-Z-9._%+-]+@[a-z0-9.-]+\.[a-zA-Z]{2,5}$")))))
(check-sat)
