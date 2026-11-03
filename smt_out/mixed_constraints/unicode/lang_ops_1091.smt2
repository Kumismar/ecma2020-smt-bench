; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<u onkeyup=""alert(1)"" contenteditable>test</u>") (= x "<element draggable=""true"" ondragstart=""al\u{20000}ert(1)"">test</element>") (= x "<listing draggable=""true"" ondragenter=""alert(1)"">test</listing>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[A-Za-z0-9-_](([_\.\-]?[a-zA-Z0-9-_]+)*)_?@([A-Za-z0-9]+)(([\.\-\u{5c}u200c\u{5c}u200b]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$") (re.inter (re.++ re.all (str.to_re ">")) (re.comp ((_ re.from_regex ecma2020 u) "^[0-9\-\+\.\s\(\)]*$"))))))
(check-sat)
