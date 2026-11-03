; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<template match=""/"">") (= x "<samp id=x tabindex=1 onactivate=alert(1)></samp>") (= x "<;IMG LOWSRC="";javascript:alert(';XSS';);"";>;")))
(assert (str.in_re x (re.comp (re.diff ((_ re.from_regex ecma2020 u) "^@[A-Za-z0-9-_]{1,15}$") (re.comp ((_ re.from_regex ecma2020 u) "^[-0-9a-zA-Z_.]+$"))))))
(check-sat)
