; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<colgroup onmousedown=""alert(1)"">test</colgroup>") (= x "<aside draggable=""true"" ondragleave=""alert(1)"">test</aside>") (= x "<bgsound onmouseenter=""alert(1)"">test</bgsound>")))
(assert (str.in_re x (re.comp (re.union (re.inter ((_ re.from_regex ecma2020) "[A-Za-z\u{e1}\u{e0}\u{e2}\u{e3}\u{e9}\u{e8}\u{ea}\u{ed}\u{ef}\u{f3}\u{f4}\u{f5}\u{f6}\u{fa}\u{e7}\u{f1}\u{c1}\u{c0}\u{c2}\u{c3}\u{c9}\u{c8}\u{cd}\u{cf}\u{d3}\u{d4}\u{d5}\u{d6}\u{da}\u{c7}\u{d1} ]+$") ((_ re.from_regex ecma2020) "((-)?\d+((\.|,)\d+)?)")) ((_ re.from_regex ecma2020) "^[a-zA-Z0-9\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e5}\u{e7}\u{e8}\u{e9}\u{ea}\u{eb}\u{ec}\u{ed}\u{ee}\u{ef}\u{f0}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f9}\u{fa}\u{fb}\u{fc}\u{fd}\u{ff}\-'&]{4,}$")))))
(check-sat)
