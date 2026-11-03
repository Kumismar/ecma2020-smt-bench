; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><summary style=""animation-name:x"" onanimationstart=""alert(1)""></summary>") (= x "<fieldset onmouseenter=""alert(1)"">test</fieldset>") (= x "<blink onmouseenter=""alert(1)"">test</blink>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?$") (re.union ((_ re.from_regex ecma2020 u) "(?!.*@.*).*") ((_ re.from_regex ecma2020 u) "^([a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$)")))))
(check-sat)
