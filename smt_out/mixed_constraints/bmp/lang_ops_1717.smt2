; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<eval>new ActiveXObject(&apos;htmlfile&apos;).parentWindow.alert(135)</eval>") (= x "<iframe onmouseout=""alert(1)"">test</iframe>") (= x "xmlns:svg=""http://www.w3.org/2000/svg"">")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[a-zA-Z\s]+$") ((_ re.from_regex ecma2020) "[0-9\s-]{10,12}")))))
(check-sat)
