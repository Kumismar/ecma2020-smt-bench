; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<x contenteditable onkeydown=alert(1)>press any key!") (= x "&lt;IMG SRC=&quot;java\u{20000}sc\u{20000}ript:alert(&apos;XSS&apos;)&quot;") (= x "<style>@keyframes x{}</style><th style=""animation-name:x"" onanimationend=""alert(1)""></th>")))
(assert (not (str.in_re x (re.diff (re.inter ((_ re.from_regex ecma2020 u) "^[A-Z]{1}[0-9]{7}[A-Z0-9]{1}$|^[T]{1}[A-Z0-9]{8}$|^[0-9]{8}[A-Z]{1}$") ((_ re.loop 86 93) re.allchar)) ((_ re.from_regex ecma2020 u) "^1[3|4|5|7|8][0-9]{9}$")))))
(check-sat)
