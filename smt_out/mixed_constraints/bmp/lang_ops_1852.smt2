; lang_ops, BMP mode: x from a disjunction of constants, (negated) membership of x in a regex built by language operations from ECMAScript regexes
(set-logic QF_SLIA)
(set-info :status unsat)
(declare-const x String)
(assert (or (= x "<\u{20000}abbr onkeyup=""alert(1)"" contenteditab\u{20000}le>test</abbr>") (= x "<rp dragga\u{10348}ble=""true"" ondragenter=""alert(1)"">test</rp>") (= x "<dd id=x tabindex=1 onfocus=alert(1)></dd>")))
(assert (str.in_re x (re.inter ((_ re.from_regex ecma2020) ".{10,18}") ((_ re.from_regex ecma2020) "[a-zA-Z0-9 './,]+$"))))
(check-sat)
