; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<xmp on\u{1f600}keyup=""alert(1)"" contenteditable>test</\u{1f600}xmp>") (= x "--><!-- --\x21> <img src=xxx:x onerror=javascript:alert(1)> -->") (= x "<dir onmouseover=""alert(1)"">test</dir>")))
(assert (not (str.in_re x (re.comp (re.union (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z][a-zA-Z0-9-_\.]{1,25}$") ((_ re.from_regex ecma2020) "^[@\.\w\-\+\^]+$")) (re.++ (str.to_re "<xmp o") re.all))))))
(check-sat)
