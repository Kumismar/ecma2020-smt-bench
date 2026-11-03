; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyframes x{}</style><map style=""animation-name:x"" onanimationend=""alert(1)""></map>") (= x "<form onclick=""alert(1)"">test</form>") (= x "&lt;SCRIPT \""a='&gt;'\"" SRC=\""http&#58;//ha&#46;ckers&#46;org/xss&#46;js\""&gt;&lt;/SCRIPT&gt;")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "[\u{5c}u4e00-\u{5c}u9fa5]{2,8}") ((_ re.from_regex ecma2020) "^012(0[1-9]|1[0-2])(\d{4}|\d{5})[^a-zO]$")))))
(check-sat)
