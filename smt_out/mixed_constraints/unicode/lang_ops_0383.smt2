; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "\u{201c}><ScRiPt>alert(documen\u{1d400}t.cookie)</script>\u{1d400}") (= x "<section id=x tabindex=1 onbeforedeactivate=alert(1)></section><input autofocus>") (= x "<button id=x tabindex=1 ondeactivate=alert(1)></button><input id=y autofocus>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^\S{6,14}$") (re.comp ((_ re.from_regex ecma2020 u) "^[A-Za-z]{2}[0-9]{2}[ ?][(A-Za-z0-9)( )?]{12,37}$")))))
(check-sat)
