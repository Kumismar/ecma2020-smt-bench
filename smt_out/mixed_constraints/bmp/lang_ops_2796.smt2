; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status sat)
(declare-const x String)
(assert (or (= x "<P STYLE=""behavior:url('#default#time2')"" end=""0"" onEnd=""javascript:alert(1)"">") (= x "<svg oncontextmenu=""alert(1)"">test</svg>") (= x "<option id=x tabindex=1 ondeactivate=alert(1)></option><input id=y autofocus>")))
(assert (str.in_re x (re.comp (re.inter ((_ re.from_regex ecma2020) ".*(^(bc1|[13])[a-zA-HJ-NP-Z0-9]{25,39}$).*") (re.union ((_ re.from_regex ecma2020) "^([\u{410}-\u{42f}0-9]([\u{430}-\u{44f}0-9]){0,}(.)?){1,}$") (re.++ (str.to_re "<op") re.all))))))
(check-sat)
