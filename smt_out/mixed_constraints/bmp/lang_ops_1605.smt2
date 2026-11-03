; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<xss id=x tabindex=1 onblur=alert(1)></xss><input autofocus>") (= x "\u{10348}&#X03c") (= x "&lt;IMG SRC=&apos;vbscript:msgbox(&quot;XSS&quot;)&apos;&gt;")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^[a-zA-Z]{0,60}$") ((_ re.from_regex ecma2020) "^[\u{30a1}-\u{30f6}\u{30f7}\u{30f8}\u{30f9}\u{30fa}\u{30fc}\u{3000} ]*$")))))
(check-sat)
