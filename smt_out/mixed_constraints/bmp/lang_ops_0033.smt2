; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<data onmouseover=""alert(1)"">test</data>") (= x "<script onerror=alert(1) src=/></script>") (= x "<;IMG SRC="";mocha:[code]"";>;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{435}\u{401}a-zA-Z]+$") ((_ re.from_regex ecma2020) "^(0941)([0-9]{7})"))))
(check-sat)
