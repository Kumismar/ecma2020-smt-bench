; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<sup oncut=\u{1d400}""al\u{1d400}ert(1)"" contenteditable>test</sup>") (= x "<audio oncopy=""alert(1)"" contenteditable>test</audio>") (= x "<dir draggable=""true"" ondragstart=""\u{1d400}\u{10348}alert(1)"">test</dir>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^[A-Z][1-2]\d{8}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9 ]{2,50}$"))))))
(check-sat)
