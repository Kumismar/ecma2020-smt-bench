; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<frameset id=x tabindex=1 onactivate=alert(1)></frameset>") (= x "<;IMG SRC="";livescript:[code]"";>;") (= x "<sl\u{10348}ot onpaste=""alert(1)"" contenteditable>test</slot>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "[A-Za-z\u{e1}\u{e0}\u{e2}\u{e3}\u{e9}\u{e8}\u{ea}\u{ed}\u{ef}\u{f3}\u{f4}\u{f5}\u{f6}\u{fa}\u{e7}\u{f1}\u{c1}\u{c0}\u{c2}\u{c3}\u{c9}\u{c8}\u{cd}\u{cf}\u{d3}\u{d4}\u{d5}\u{d6}\u{da}\u{c7}\u{d1} ]+$") ((_ re.from_regex ecma2020 u) "^[0-9]{13}$")))))
(check-sat)
