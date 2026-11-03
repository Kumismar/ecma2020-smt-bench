; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<thead draggable=""true"" ondragleave=""alert(1)"">test</thead>") (= x "<ins draggable=\u{1f4a9}""true"" ondragenter=""a\u{10348}lert(1)"">test</ins>") (= x "<img src\x00=x onerror=""javascript:alert(1)"">")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\w{5}$") (re.comp ((_ re.from_regex ecma2020 u) "^[\u{3041}-\u{3093}\u{30a1}-\u{30f4}\u{30fc}]+$")))))
(check-sat)
