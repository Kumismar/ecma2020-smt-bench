; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<tt id=x tabindex=1 onfocus=alert(1)></tt>") (= x "<style>:target {color: red;}</style><hr id=x style=""transition:color 10s"" ontransitioncancel=alert(1)></hr>") (= x "&lt;IMG SRC=&quot; &amp;#14;  javascript:alert(&apos;XSS&apos;);&quot;&gt;")))
(assert (not (str.in_re x (re.diff ((_ re.from_regex ecma2020 u) "^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$") (re.union (re.++ (str.to_re "&") re.all) (re.union ((_ re.from_regex ecma2020 u) "^.{0,6}$") ((_ re.from_regex ecma2020 u) "^[a-zA-Z\x7f-\xff0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z\x7f-\xff0-9-]+(?:\.[a-zA-Z\x7f-\xff0-9-]+)*$")))))))
(check-sat)
