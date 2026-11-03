; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<isindex onkeypress=""alert(1)"" contenteditable>test</isindex>") (= x "<track onpaste=""alert(\u{20000}1)"" contenteditable>tes\u{1f600}t</track>") (= x "<a href=""\x15javascript:javascript:alert(1)"" id=""fuzzelement1"">test</a>")))
(assert (not (str.in_re x (re.inter ((_ re.from_regex ecma2020) "^[a-zA-Z]{2,30}$") ((_ re.from_regex ecma2020) "^(((0[1-9]|[12][0-9]|3[01])[/](0[13578]|1[02])|(0[1-9]|[12][0-9]|30)[/](0[469]|11)|(0[1-9]|1\d|2[0-8])[/]02)[/]\d{4}|29[/]02[/](\d{2}(0[48]|[2468][048]|[13579][26])|([02468][048]|[1359][26])00))$")))))
(check-sat)
