; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<optgroup id=x tabindex=1 onfocus=alert(1)></optgroup>") (= x "<em onkeypress=""alert(1)"" contenteditable>test</em>") (= x "&#X003c;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9._-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$") ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}._%+-]+@[A-Za-z0-9\u{e4}\u{f6}\u{fc}\u{c4}\u{d6}\u{dc}\u{df}.-]+\.[A-Za-z]{2,16}$"))))
(check-sat)
