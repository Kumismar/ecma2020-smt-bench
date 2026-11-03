; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<time oncopy=""alert(1)"" contenteditable>test</time>") (= x "<optgrou\u{10348}p onbeforepaste=""alert(1)"" contenteditable>test</optgroup>") (= x "<hr onmouseout=""alert(1)"">test</hr>")))
(assert (not (str.in_re x (re.comp (re.union (re.union ((_ re.from_regex ecma2020) "^(.*\d.*){6,}$") ((_ re.from_regex ecma2020) "[0-9]+(\.[0-9][0-9])?")) ((_ re.from_regex ecma2020) "(?=^.{2,25}$)(?![.\n])(?=.*[a-zA-Z]).*$"))))))
(check-sat)
