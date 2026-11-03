; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><spacer style=""animation-name:x"" onanimationend=""alert(1)""></spacer>") (= x "<canvas dragg\u{1d400}able=""true"" ondragstart=""alert(1)"">test</canvas>") (= x "&lt;IMG SRC=&quot;jav&#x09;ascript:alert(&apos;XSS&apos;);&quot;&gt;")))
(assert (not (str.in_re x (re.inter (re.inter ((_ re.from_regex ecma2020) "^[A-Za-z][A-Za-z0-9]*$") (re.comp (re.++ (str.to_re "<c") re.all))) (re.union ((_ re.from_regex ecma2020) "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,14}$") ((_ re.from_regex ecma2020) "^\+?[78][-\(]?\d{3}\)?-?\d{3}-?\d{2}-?\d{2}$"))))))
(check-sat)
