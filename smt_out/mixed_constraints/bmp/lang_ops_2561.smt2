; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdi\u{20000} onbeforepaste=""alert(1)"" con\u{1d400}tenteditable>test</bdi>") (= x "<x 1="">"" onxxx=1") (= x "<frameset id=x tabindex=1 onbeforeactivate=alert(1)></frameset>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{1,}$") (re.diff (re.diff (re.++ re.all (str.to_re "o") re.all) (re.comp ((_ re.from_regex ecma2020) "^(13[0-9]|14[5|7]|15[0|1|2|3|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}"))) ((_ re.from_regex ecma2020) "^[^-].*@\S+\.\S+$"))))))
(check-sat)
