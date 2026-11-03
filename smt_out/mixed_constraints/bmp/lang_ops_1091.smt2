; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<html onMouseOut html onMouseOut=""javascript:javascript:alert(1)""></html onMouseOut>") (= x "<marquee onmousedown=""alert(1)"">test</marquee>") (= x "<ol oncopy=""alert(1)"" contenteditable>test</ol>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^\u{a5}d+$") ((_ re.from_regex ecma2020) "[0-9\(\)\s\-\+]+"))))
(check-sat)
