; lang_ops, Unicode mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<optgroup oncut=""alert(1)"" contenteditable>test</optgroup>") (= x "<dir onmouseup=""alert(1)"">test</dir>") (= x "<pre onmouseleave=""alert(1)"">test</pre>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+\s?[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+\s?[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+\s?[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+\s?[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+\s?[a-zA-Z\u{c3}-\u{e3}\u{ca}-\u{ea}\u{c1}-\u{e1}\u{c0}-\u{e0}\u{c9}-\u{e9}\u{d3}-\u{f3}\u{d4}-\u{f4}\u{d5}-\u{f5}]+$") (re.comp (re.inter ((_ re.from_regex ecma2020 u) "^\+?[0-9 ]{8,16}$") ((_ re.from_regex ecma2020 u) "[a-z A-Z]+")))))))
(check-sat)
