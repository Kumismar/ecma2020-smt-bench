; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<shadow onfocusout=alert(1) tabindex=1 id=x></shadow><input autofocus>") (= x "<map draggable=""true"" ondragenter=""alert(1)"">test</map>") (= x "<ul draggable=""true"" ondragleave=""alert(1)"">test</ul>")))
(assert (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^( {0,}[A-Za-z\u{c6}\u{e6}\u{d8}\u{f8}\u{c5}\u{e5}'\u{c4}\u{e4}\u{d6}\u{f6}\u{dc}\u{fc}\u{df}\u{c9}\u{e9}\u{c0}\u{e0}\u{c8}\u{e8}\u{d9}\u{f9}\u{c2}\u{e2}\u{ca}\u{ea}\u{ce}\u{ee}\u{d4}\u{f4}\u{db}\u{fb}\u{cb}\u{eb}\u{cf}\u{ef}\u{178}\u{ff}\u{c7}\u{e7}\u{c1}\u{e1}\u{cd}\u{ed}\u{d3}\u{f3}\u{da}\u{fa}\-]{2,} {0,}){1,}$") ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{3,}$")) (re.comp ((_ re.from_regex ecma2020) "^[()+ 0-9]+$")))))
(check-sat)
