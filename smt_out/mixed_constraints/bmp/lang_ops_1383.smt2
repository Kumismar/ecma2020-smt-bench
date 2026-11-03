; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<optgroup onkeydown=""alert(1)"" contenteditable>test</optgroup>") (= x "<object onpaste=""alert(1)"" contenteditable>test</object>") (= x "<input type=checkbox id=x onfocus=alert(1)>")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._%+-]+@(?!gmail.com)(?!yahoo.com)(?!hotmail.com)(?!yahoo.co.in)(?!aol.com)(?!live.com)(?!outlook.com)[a-zA-Z0-9_-]+.[a-zA-Z0-9-.]{2,61}$") ((_ re.from_regex ecma2020) "[a-z0-9A-Z]{6,16}$")) ((_ re.from_regex ecma2020) "[a-zA-Z0-9]{6,12}")))))
(check-sat)
