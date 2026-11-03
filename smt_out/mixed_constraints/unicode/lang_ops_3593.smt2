; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<w contenteditable id=x onfocus=alert()>") (= x "ABC<div st\u{1f4a9}yle=""x:\xE2\x80\x81expression(javascri\u{1f600}pt:alert(1)"">DEF") (= x "<time onbeforepaste=""alert(1)"" contenteditable>test</time>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020 u) "^([a-zA-Z \u{e1}\u{e9}\u{ed}\u{f3}\u{fa}\u{f1}\u{c1}\u{c9}\u{cd}\u{d3}\u{da}\u{d1}]{3,30})*$") ((_ re.from_regex ecma2020 u) "^(?:(?:31(-|\/)(?:0?[13578]|1[02]))\1|(?:(?:29|30)(-|\/)(?:0?[1,3-9]|1[0-2])\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(-|\/)0?2\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(-|\/)(?:(?:0?[1-9])|(?:1[0-2]))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$")))))
(check-sat)
