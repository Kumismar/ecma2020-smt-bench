; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<q onmousemove=""alert(1)"">test</q>") (= x "<textarea onauxclick=alert(1)>XSS</textarea>") (= x "<del oncopy=""alert(1)"" contenteditable>test</del>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "\([0-9]{2}\) [0-9]{4,6}-[0-9]{3,4}$") ((_ re.from_regex ecma2020 u) "[0-3][0-9]\.[01][0-9]\.20[0-9]{2}")) (re.inter (re.++ re.all (str.to_re ">")) ((_ re.from_regex ecma2020 u) "[0-9a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}\u{df},\s\.\-]{0,50}")))))
(check-sat)
