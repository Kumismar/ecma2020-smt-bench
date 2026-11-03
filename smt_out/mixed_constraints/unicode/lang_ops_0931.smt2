; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<xmp oncontextmenu=""alert(1)"">test</xmp>") (= x "&#x3C") (= x "<noscript oncut=""alert(1)"" contenteditable>test</noscript>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9\-_\.]+)@([a-zA-Z0-9\-_]+\.)+[a-zA-Z]{2,}$") (re.comp ((_ re.from_regex ecma2020 u) "[A-Za-z\s]{1,32}"))))))
(check-sat)
