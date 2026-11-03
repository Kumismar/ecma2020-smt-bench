; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<bdo onbeforecut=""alert(1)"" contenteditable>test</bdo>") (= x "<map onmouseenter=""alert(1)"">test</map>") (= x "<div id=x tabindex=1 onfocusin=alert(1)></div>")))
(assert (str.in_re x (re.comp (re.union (re.++ re.all (str.to_re "v>")) (re.diff ((_ re.from_regex ecma2020) "^([a-zA-Z0-9_\-])([a-zA-Z0-9_\-\.\+]*)@(\[((25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\.){3}|((([a-zA-Z0-9\-]+)\.)+))([a-zA-Z]{2,}|(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])\])$") (re.comp ((_ re.from_regex ecma2020) "^[^<>\/]+$")))))))
(check-sat)
