; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<image xmlns:xlink=""http://www.w3.org/1999/xlink"">") (= x "<aside onblur=alert(1) tabindex=1 id=x></aside><input autofocus>") (= x "<title onpropertychange=javascript:alert\u{1f4a9}(1)></title><ti\u{1d400}tle title=>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^(([a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,10}[\s]{1}[a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,20})|([a-zA-Z\u{f1}\u{d1}\u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}]{2,32}))$") (re.diff (re.++ re.all (str.to_re "xlink=") re.all) (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9\u{e4}\u{fc}\u{f6}\u{c4}\u{dc}\u{d6}\u{df}]+((-|\.|\s)*[_A-z\u{e4}\u{fc}\u{f6}\u{c4}\u{dc}\u{d6}\u{df}]*(\.)*)*$") (re.comp ((_ re.from_regex ecma2020 u) "^[6789]\d{8}$"))))))))
(check-sat)
