; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<u onmousemove=""alert(1)"">test</u>") (= x "<tt onkeyup=""alert(1)"" contenteditable>test</tt>") (= x "<figure onmousemove=""alert(1)"">test</figure>")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^[A-Za-z0-9\-\s]{5,60}$") (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z.-]+\.[a-z]{2,}$") (re.++ (str.to_re "<u") re.all)) ((_ re.from_regex ecma2020) "^[0-9a-zA-Z!\u{c2}\u{a7}:;,._`&@$&%?+=*<>~|^{}""()[\]\/\-]{6,16}$")))))))
(check-sat)
