; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><dt style=""animation-name:x"" onanimationend=""alert(1)""></dt>") (= x "\u{1d400}<s\u{1d400}vg><u onload=alert(1)></u>") (= x "<;IMG SRC=&;#x6A&;#x61&;#x76&;#x61&;#x73&;#x63&;#x72&;#x69&;#x70&;#x74&;#x3A&;#x61&;#x6C&;#x65&;#x72&;#x74&;#x28&;#x27&;#x58&;#x53&;#x53&;#x27&;#x29>;")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^3\d{2}\d{6,7}$$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "[0-9]{2}/[0-9]{2}/[0-9]{4}$") (re.comp (re.++ re.all (str.to_re "></u>"))))))))
(check-sat)
