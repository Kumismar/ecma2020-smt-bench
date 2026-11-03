; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<input TYPE=""IMAGE"" SRC=""javascript:document.vulnerable=true;"">") (= x "<multicol ondblclick=""alert(1)"">test</multicol>") (= x "<li onmousemove=""alert(1)"">test</li>")))
(assert (str.in_re x (re.diff ((_ re.from_regex ecma2020) "^((?!.*(gmail\.org|gmail\.us|yaho\.com|\.con)).*)([^@]+@[^@]+\.[^@]+)$") (re.union ((_ re.from_regex ecma2020) "^[\u{430}-\u{44f}\u{410}-\u{42f}\u{451}\u{401}a-zA-Z]+$") (re.++ re.all (str.to_re ")"">t") re.all)))))
(check-sat)
