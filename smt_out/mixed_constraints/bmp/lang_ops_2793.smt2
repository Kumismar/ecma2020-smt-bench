; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<sup onblur=alert(1) ta\u{1d400}bindex=1 id=x></s\u{20000}up><input autofocus>") (= x "<mark id=x tabindex=1 ondeactivate=alert(1)></mark><input id=y autofocus>") (= x "<base draggable=""true"" ondragend=""alert(1)"">test</base>")))
(assert (not (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^.*\..{2,}$") ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"))))))
(check-sat)
