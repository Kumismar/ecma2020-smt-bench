; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bgsound oncopy=""alert(1)"" contenteditable>test</bgsound>") (= x "<strike onmouseup=""alert(1)"">test</strike>") (= x "<object draggable=""true"" ondragleave=""alert(1)"">test</object>")))
(assert (not (str.in_re x (re.inter (re.inter (re.++ (str.to_re "<obje") re.all) ((_ re.from_regex ecma2020 u) "[-_a-zA-Z0-9#&=\+]+(\.[-_a-zA-Z0-9#&=\+]+)*@(?!.*@.*)[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+(\.[a-zA-Z\u{e4}\u{c4}\u{f6}\u{d6}\u{fc}\u{dc}0-9-]+)*\.[a-zA-Z]{2,}")) (re.union ((_ re.from_regex ecma2020 u) "^[\\+]{0,1}[0-9]{6,12}$") ((_ re.from_regex ecma2020 u) "C\d{8}"))))))
(check-sat)
