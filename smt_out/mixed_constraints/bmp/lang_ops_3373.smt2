; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<plaintext draggable=""true"" ondragleave=""alert(1)"">test</plaintext>") (= x "<em onmouseout=""alert(1)"">test</em>") (= x "<svg onblur=alert(1) tabindex=1 id=x></svg><input autofocus>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) "\(\d\d\) \d\d\d\d\d-\d\d\d\d$") ((_ re.from_regex ecma2020) "^[1-9][0-9]*")))))
(check-sat)
