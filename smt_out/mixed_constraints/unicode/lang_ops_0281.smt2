; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<noframes onclick=""alert(1)"">test</noframes>") (= x "<img SRC="" &#14; javascript:document.vulnerable=true;"">") (= x "&lt;scrscriptipt&gt;alert(1)&lt;/scrscriptipt&gt;")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^(\d{5}|\d{8})$") ((_ re.from_regex ecma2020 u) "[a-zA-Z_-]{3,}$")))))
(check-sat)
