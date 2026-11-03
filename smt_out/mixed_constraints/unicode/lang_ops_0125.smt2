; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<em onmouseenter=""alert(1)"">test</em>") (= x "<figcaption oncontextmenu=""alert(1)"">test</figcaption>") (= x "<span onkeypress=""alert(1)"" contenteditable>test</span>")))
(assert (not (str.in_re x (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,30})$") (re.inter ((_ re.from_regex ecma2020 u) "^([A-Z,\u{d1},&]{3,4}[0-9]{2}[0-1][0-9][0-3][0-9][A-Z,0-9][A-Z,0-9][0-9,A-Z])$") ((_ re.from_regex ecma2020 u) "^[A-z\u{410}-\u{42f}\u{430}-\u{44f}\u{401}\u{451}\s]+$"))))))
(check-sat)
