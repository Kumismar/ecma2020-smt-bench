; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><fieldset style=""animation-name:x"" onanimationstart=""alert(1)""></fieldset>") (= x "&lt;/br style=a:expression(alert())&gt;") (= x "<center draggable=""true"" ondragleave=""alert(1)"">test</center>")))
(assert (not (str.in_re x (re.inter (re.diff ((_ re.from_regex ecma2020) "^\w[\w\.-]*\@\w+[\w-]*\.\w+[\.\w-]*$") (re.comp (re.++ re.all (str.to_re "&gt;")))) ((_ re.from_regex ecma2020) "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}$")))))
(check-sat)
