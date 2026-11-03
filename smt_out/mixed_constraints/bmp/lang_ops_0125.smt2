; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<marquee onclick=""alert(1)"">test</marquee>") (= x "<figure draggable=""true"" ondragstart=""alert(1)"">test</figure>") (= x "<var draggable=""true"" ondrag=""alert(1)"">test</var>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^.{4,}$") ((_ re.from_regex ecma2020) "^[A-Za-z0-9.& _]*[A-Za-z0-9][A-Za-z0-9.& _]*$")))))
(check-sat)
