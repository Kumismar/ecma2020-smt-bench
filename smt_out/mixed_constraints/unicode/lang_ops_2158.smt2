; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<;IMG SRC=""; &;#14;  javascript:alert(';XSS';);"";>;") (= x "<button id=x tabindex=1 onbeforedeactivate=alert(1)></button><input autofocus>") (= x "<IMG SRC=javascript:alert('XSS')>")))
(assert (not (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^\d{5}(?:[\s-]\d{4})?$") ((_ re.from_regex ecma2020 u) "[^'\u{bf}\u{a1}#$&`~()/><\][\\\x22,;|]+"))))))
(check-sat)
