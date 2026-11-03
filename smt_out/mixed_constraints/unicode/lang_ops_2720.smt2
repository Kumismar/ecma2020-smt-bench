; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<embed s\u{20000}rc=\u{1d400}""javascript:alert(1)"">") (= x "<colgroup onbeforecut=""alert(1)"" contenteditable>test</colgroup>") (= x "<header onmousedown=""alert(1)"">te\u{20000}st</header>")))
(assert (str.in_re x (re.diff (re.++ re.all (str.to_re "(1)"">")) (re.union ((_ re.from_regex ecma2020 u) "^(?=.*[0-9]+.*)(?=.*[a-zA-Z]+.*)[0-9a-zA-Z!@#$%^&*()]{8,}$") (re.comp ((_ re.from_regex ecma2020 u) "[0-9]+[\.]{0,1}[0-9]*"))))))
(check-sat)
