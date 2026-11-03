; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<dd draggable=""true"" ondragstart=""alert(1)"">test</dd>") (= x "<li draggable=""true"" ondragend=""alert(1)"">test</li>") (= x "<code draggable=""true"" ondragleave=""alert(1)"">test</code>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020 u) "[A-Za-z0-9- ]{2,8}") ((_ re.from_regex ecma2020 u) "[A-Za-z \u{e7}\u{11f}\u{131}i\u{f6}\u{15f}\u{fc}\u{c7}\u{11e}\u{130}\u{d6}\u{15e}\u{dc}]{3,}")) ((_ re.from_regex ecma2020 u) "^[\d\+\- ]{9,15}$"))))
(check-sat)
