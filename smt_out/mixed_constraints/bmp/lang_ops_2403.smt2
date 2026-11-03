; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<xmp onkeypress=""alert(1)"" contenteditable>test</xmp>") (= x "<style>:target {color:red;}</style><meter id=x style=""transition:color 1s"" ontransitionend=alert(1)></meter>") (= x "&lt;IMG SRC=javascript:alert(&amp;quot;XSS&amp;quot;)&gt;")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "[A-Za-z][0-9][A-Za-z] [0-9][A-Za-z][0-9]") ((_ re.from_regex ecma2020) "^([a-zA-Z'\u{e0}\u{e2}\u{e9}\u{e8}\u{ea}\u{f4}\u{f9}\u{fb}\u{e7}\u{c0}\u{c2}\u{c9}\u{c8}\u{d4}\u{d9}\u{db}\u{c7}\s-]{1,40})$")))))
(check-sat)
