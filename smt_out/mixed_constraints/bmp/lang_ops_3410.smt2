; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<tt onmouseover=""alert(1)"">test</tt>") (= x "<option onclick=""alert(1\u{20000})"">test\u{20000}</option>") (= x "<audio oncontextmenu=""alert(1)"">test</audio>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e7}\u{e8}\u{e9}\u{ea}\u{eb}\u{ec}\u{ed}\u{ee}\u{ef}\u{f1}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f9}\u{fa}\u{fb}\u{fc}\u{fd}\u{ff}\u{c0}\u{c1}\u{c2}\u{c3}\u{c4}\u{c7}\u{c8}\u{c9}\u{ca}\u{cb}\u{cc}\u{cd}\u{ce}\u{cf}\u{d1}\u{d2}\u{d3}\u{d4}\u{d5}\u{d6}\u{d9}\u{da}\u{db}\u{dc}\u{dd}\s]+$") (re.union ((_ re.from_regex ecma2020) "[a-zA-Z]{3,25}") (re.++ re.all (str.to_re "udio>"))))))))
(check-sat)
