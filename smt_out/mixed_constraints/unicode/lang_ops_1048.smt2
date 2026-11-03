; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<svg><blockquote onload=alert(1)></blockquote>") (= x "<p onkeydown=""alert(1)"" contenteditable>test</p>") (= x "<label oncopy=""alert(1)"" contenteditable>test</label>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "[+0-9]{9,}") ((_ re.from_regex ecma2020 u) "^[^\u{b1}!@\u{a3}$%^&*_+\u{a7}\u{a1}\u{20ac}#\u{a2}\u{a7}\u{b6}\u{2022}\u{aa}\u{ba}\u{ab}\/<>?:;|=]{1,20}$"))))
(check-sat)
