; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<code onpaste=""alert(1)"" contenteditable>test</code>") (= x "<img src=1 href=1 onerror=""javascript:alert(1)""></img>") (= x "<ins oncopy=""alert(1)"" contenteditable>test</ins>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "\s*[a-zA-Z0-9-_]{6,16}$") ((_ re.from_regex ecma2020 u) "[a-zA-Z]{6}[0-9]{2}[a-zA-Z][0-9]{2}[a-zA-Z][0-9]{3}[a-zA-Z]")))))
(check-sat)
