; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<style>@keyfram\u{20000}es x{}<\u{1f600}/style><acronym style=""animation-name:x"" onanimationend=""alert(1)""></acronym>") (= x "<IMG SRC=""javascript:alert('XSS');"">") (= x "<script>javascript:alert(1)</script\x0A")))
(assert (not (str.in_re x (re.inter (re.union ((_ re.from_regex ecma2020 u) "^[0-9-]+$") (re.comp ((_ re.from_regex ecma2020 u) "^[a-zA-Z0-9 ]*$"))) ((_ re.from_regex ecma2020 u) "^(?=.*\d).{11,}$")))))
(check-sat)
