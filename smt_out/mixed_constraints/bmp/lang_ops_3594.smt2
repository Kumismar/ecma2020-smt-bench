; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>:target {color:red;}</style><bdi id=x style=""transition:color 1s"" ontransitionend=alert(1)></bd\u{1f4a9}i>") (= x "<strong id=x tabindex=1 onfocusin=alert(1)></strong>") (= x "<META HTTP-EQUIV=""Link"" Content=""<javascript:alert('XSS')>; REL=stylesheet"">")))
(assert (not (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020) "^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[#$^+=!*()@%&]).{8,10}$") (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z0-9-#.!,@\[\]\(\)\/ ]+$") ((_ re.from_regex ecma2020) "^[a-zA-Z\u{e0}\u{e1}\u{e2}\u{e3}\u{e4}\u{e7}\u{e8}\u{e9}\u{ea}\u{eb}\u{ec}\u{ed}\u{ee}\u{ef}\u{f1}\u{f2}\u{f3}\u{f4}\u{f5}\u{f6}\u{f9}\u{fa}\u{fb}\u{fc}\u{fd}\u{ff}\u{c0}\u{c1}\u{c2}\u{c3}\u{c4}\u{c7}\u{c8}\u{c9}\u{ca}\u{cb}\u{cc}\u{cd}\u{ce}\u{cf}\u{d1}\u{d2}\u{d3}\u{d4}\u{d5}\u{d6}\u{d9}\u{da}\u{db}\u{dc}\u{dd}\s]+$")))))))
(check-sat)
