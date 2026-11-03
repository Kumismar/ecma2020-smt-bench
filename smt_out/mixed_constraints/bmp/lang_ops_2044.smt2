; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<area onmouseup=""alert(1)"">test</area>") (= x "<progress onpaste=""alert(1)"" contenteditable>test</progress>") (= x "<keygen draggable=""true"" ondrag=""alert(1)"">test</keygen>")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[0-9]*([-][0-9]*)*?$") ((_ re.from_regex ecma2020) "^[0-9A-Za-z_]+$")) (re.comp ((_ re.from_regex ecma2020) ".{0,150}"))))))
(check-sat)
