; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<IMG SRC=x onplay=""alert(String.fromCharCode(88,83,83))"">") (= x "<rp onmou\u{10348}semove=""alert(1)"">te\u{1f4a9}st</rp>") (= x "<tt onbeforecopy=""alert(1)"" contenteditable>test</tt>")))
(assert (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z0-9._-]{5,30}$") (re.comp ((_ re.from_regex ecma2020) "^[0-9 ]{0,6}$"))) ((_ re.from_regex ecma2020) "[A-Z]+[-.\u{25cf} A-Z0-9]+"))))
(check-sat)
