; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<source oncut=""alert(1)"" contenteditable>test</source>") (= x "<data draggable=""true"" ondrag=""alert(1)"">test</data>") (= x "<u onkeydown=""alert(1)"" contenteditable>test</u>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}") (re.inter ((_ re.from_regex ecma2020) "^[\w\.+\-_]+@([\w\d-]+\.)+[\w]{2,12}$") ((_ re.from_regex ecma2020) "^[a-zA-Z0-9.!#$%&\u{2019}*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$")))))
(check-sat)
