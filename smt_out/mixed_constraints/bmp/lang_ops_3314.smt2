; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<isindex formaction=javascript:alert(1) type=submit value=click>") (= x "&#\u{1f600}x3\u{20000}c;") (= x "<\u{1d400}x \u{10348}oncut=alert(1)>copy this!")))
(assert (str.in_re x (re.comp (re.inter (re.diff ((_ re.from_regex ecma2020) "^[1-9][0-9]{3}[\s]{0,1}[A-Za-z]{2}$") ((_ re.from_regex ecma2020) "^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")) ((_ re.from_regex ecma2020) "^([A-z0-9-]){5,}$")))))
(check-sat)
