; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><address id=x style=""transition:color 1s"" ontransitionend=alert(1)></address>") (= x "<isindex onpaste=""alert(1)"" co\u{1f4a9}ntenteditable>test</isindex>") (= x "<;IMG SRC=&;#x6A&;#x61&;#x76&;#x61&;#x73&;#x63&;#x72&;#x69&;#x70&;#x74&;#x3A&;#x61&;#x6C&;#x65&;#x72&;#x74&;#x28&;#x27&;#x58&;#x53&;#x53&;#x27&;#x29>;")))
(assert (str.in_re x (re.inter (re.++ re.all (str.to_re "dress ") re.all) (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z]{3}\s[0-9]{2,4}\/[0-9]{2,4}\/[0-9]{4}$") ((_ re.from_regex ecma2020 u) "^((?!nikitagareev22iqn)(?!pashastepanov2fgq1r)(?!karleenkla5udj).)*$")))))
(check-sat)
