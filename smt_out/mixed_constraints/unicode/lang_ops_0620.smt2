; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<summary onkeydown=""alert(1)"" contenteditable>test</summary>") (= x "<body onkeyup=""alert(1)"" contenteditable>test</body>") (= x "<samp onpaste=""alert(1)"" contenteditable>test</samp>")))
(assert (str.in_re x (re.union (re.inter ((_ re.loop 60 64) re.allchar) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9\+\s]*"))) (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9._%+\-]+@[a-z0-9.\-]+\.[a-z]{2,4}$") ((_ re.from_regex ecma2020 u) "^[0-9]{4}$"))))))
(check-sat)
