; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<time id=x tabindex=1 onactivate=alert(1)></time>") (= x "<optgroup oncut=""alert(1)"" contenteditable>test</optgroup>") (= x "<div style=content:url(data:image/svg+xml,%3Csvg/%3E);visibility:hidden onload=alert(41)></div>//[""'`-->]]>]</div>")))
(assert (str.in_re x (re.comp (re.union ((_ re.from_regex ecma2020) "^((([0-1][0-9])|2[0-3])[\:]([0-5][0-9])([\:][0-5][0-9])?)|((([0][0-9])|1[0-2])[\:]([0-5][0-9])([\:][0-5][0-9])?([AM|PM])?)$") ((_ re.from_regex ecma2020) "[A-Za-z \u{c1}\u{e1}\u{c9}\u{e9}\u{cd}\u{ed}\u{d3}\u{f3}\u{da}\u{fa}\u{dc}\u{fc}\u{d1}\u{f1}]{1,30}")))))
(check-sat)
