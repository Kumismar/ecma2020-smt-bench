; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<canvas onmouseenter=""alert(1)"">test</canvas>") (= x "<dfn oncopy=""\u{1f4a9}alert(1)"" co\u{20000}ntenteditable>test</dfn>") (= x "<noembed onbeforecut=""alert(1)"" contenteditable>test</noembed>")))
(assert (str.in_re x (re.inter (re.union (re.diff ((_ re.from_regex ecma2020) "^(19|20)\d\d([-])(0[1-9]|1[012])\2(0[1-9]|[12][0-9]|3[01])$") (re.comp ((_ re.from_regex ecma2020) "^[a-zA-Z\u{c0}-\u{ff}\u{5c}u00f1\u{5c}u00d1]+(\s*[a-zA-Z\u{c0}-\u{ff}\u{5c}u00f1\u{5c}u00d1]*)*[a-zA-Z\u{c0}-\u{ff}\u{5c}u00f1\u{5c}u00d1]+$"))) (re.++ re.all (str.to_re "ed>"))) (re.comp ((_ re.from_regex ecma2020) "^(\s*)?(\+)?([- _():=+\/]?\d[- _():=+]?){4,20}(\s*)?$")))))
(check-sat)
