; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<title onpaste=""alert(1)"" contenteditable>test</title>") (= x "&lt;") (= x "<sub onmouseover=""alert(1)"">test</sub>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9 &]{2,50}$") (re.inter ((_ re.from_regex ecma2020 u) "(https?:\/\/)?[a-zA-Z0-9]+(\.[a-zA-Z0-9]+)+(\/[a-zA-Z0-9@:%_+.,~#?&=]+)*\/?$") ((_ re.from_regex ecma2020 u) "[0-9]{6,15}$"))))))
(check-sat)
