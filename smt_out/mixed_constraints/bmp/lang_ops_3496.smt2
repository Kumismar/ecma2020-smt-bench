; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<svg><dfn onload=alert(1)></dfn>") (= x "<svg><dt onload=alert(1)></dt>") (= x "<optgroup draggable=""true"" ondragend=""alert(1)"">test</optgroup>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^(['a-zA-z\u{430}-\u{44f}\u{410}-\u{44f}\u{401}\u{451}]\s?-?){2,50}$") (re.union ((_ re.from_regex ecma2020) "^(1[3-9]\d{9})$") (re.++ re.all (str.to_re "</dt>") re.all))))))
(check-sat)
