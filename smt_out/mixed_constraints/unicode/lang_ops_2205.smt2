; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "%27%22--%3E%3C%2Fstyle%3E%3C%2Fscript%3E%3Cscript%3ERWAR%280x00010E%29%3C%2Fscript%3E") (= x "<figcaption onblur=alert(1) tabindex=1 id=x></figcaption><input autofocus>") (= x "<article onkeypress=""alert\u{1f4a9}(1)"" contenteditable>test</ar\u{20000}ticle>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[^\s*]([a-zA-Z\u{f1}\u{d1}\u{c0}-\u{ff}0-9.,\s]+){0,500}$") ((_ re.from_regex ecma2020 u) "^[A-Z0-9\- ]+"))))
(check-sat)
